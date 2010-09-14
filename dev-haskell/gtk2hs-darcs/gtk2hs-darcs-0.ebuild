# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit base eutils ghc-package multilib toolchain-funcs versionator autotools darcs

DESCRIPTION="A GUI Library for Haskell based on Gtk+"
HOMEPAGE="http://haskell.org/gtk2hs/"
LICENSE="LGPL-2.1"
SLOT="0"

KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"

IUSE="doc glade gnome opengl firefox seamonkey profile xulrunner"

EDARCS_REPOSITORY="http://code.haskell.org/gtk2hs/"
EDARCS_GET_CMD="get --partial --verbose"
EDARCS_LOCALREPO="gtk2hs"

RDEPEND=">=dev-lang/ghc-6.2
		dev-haskell/mtl
        dev-haskell/happy
        dev-haskell/alex
		>=x11-libs/gtk+-2
		glade? ( >=gnome-base/libglade-2 )
		gnome? ( >=gnome-base/libglade-2
				<x11-libs/gtksourceview-2.0
				>=gnome-base/gconf-2
				>=gnome-base/librsvg-2.16 )
		opengl? ( x11-libs/gtkglext )
		seamonkey? ( >=www-client/seamonkey-1.0.2 )
		firefox? ( >=www-client/mozilla-firefox-1.0.4 )
		xulrunner? ( net-libs/xulrunner )"
DEPEND="${RDEPEND}
		doc? ( >=dev-haskell/haddock-0.8 )"

src_unpack() {
	# The local directory to store the repository (useful to ensure a
	# unique local name); relative to EDARCS_TOP_DIR
	[ -z "$EDARCS_LOCALREPO" ] && [ -n "$EDARCS_REPOSITORY" ] \
		&& EDARCS_LOCALREPO=${EDARCS_REPOSITORY%/} \
		&& EDARCS_LOCALREPO=${EDARCS_LOCALREPO##*/}
	local EDARCS_SHOPT

	debug-print-function $FUNCNAME $*

	debug-print "$FUNCNAME: init:
	EDARCS_DARCS_CMD=$EDARCS_DARCS_CMD
	EDARCS_GET_CMD=$EDARCS_GET_CMD
	EDARCS_UPDATE_CMD=$EDARCS_UPDATE_CMD
	EDARCS_OPTIONS=$EDARCS_OPTIONS
	EDARCS_TOP_DIR=$EDARCS_TOP_DIR
	EDARCS_REPOSITORY=$EDARCS_REPOSITORY
	EDARCS_LOCALREPO=$EDARCS_LOCALREPO
	EDARCS_CLEAN=$EDARCS_CLEAN"

	einfo "Fetching darcs repository $EDARCS_REPOSITORY into $EDARCS_TOP_DIR..."
	darcs_fetch

	# patch
	cd $EDARCS_TOP_DIR/$EDARCS_LOCALREPO
	darcs apply $FILESDIR/ghc-6.12.dpatch
	cd -

	einfo "Copying $EDARCS_LOCALREPO from $EDARCS_TOP_DIR..."
	debug-print "Copying $EDARCS_LOCALREPO from $EDARCS_TOP_DIR..."

	# probably redundant, but best to make sure
	# Use ${WORKDIR}/${P} rather than ${S} so user can point ${S} to something inside.
	mkdir -p "${WORKDIR}/${P}"

	EDARCS_SHOPT=$(shopt -p dotglob)
	shopt -s dotglob	# get any dotfiles too.
	rsync -rlpgo --exclude="_darcs/"  "$EDARCS_TOP_DIR/$EDARCS_LOCALREPO"/* "${WORKDIR}/${P}"
	eval ${EDARCS_SHOPT}    # reset shopt

	einfo "Darcs repository contents are now in ${WORKDIR}/${P}"
}

src_compile() {
	# needed because we're using the darcs version
	eautoreconf

	econf \
		--enable-packager-mode \
		--enable-gtk \
		$(use_enable gnome gio) \
		$(use glade || use gnome && echo --enable-libglade) \
		$(has_version '>=x11-libs/gtk+-2.8' && echo --enable-cairo) \
		$(use_enable gnome svg) \
		$(use_enable opengl opengl) \
		$(use_enable gnome gconf) \
		$(use_enable gnome gtksourceview2) \
		$(use_enable seamonkey seamonkey) \
		$(use_enable mozilla mozilla) \
		$(use_enable gnome gnomevfs) \
		$(use_enable gnome gstreamer) \
		$(use_enable gnome vte) \
		$(use_enable xulrunner xulrunner) \
		$(use_enable doc docs) \
		$(use_enable profile profiling) \
		|| die "Configure failed"

	# parallel build doesn't work, so specify -j1
	emake -j1 || die "Make failed"
}

src_install() {

	make install \
		DESTDIR="${D}" \
		htmldir="/usr/share/doc/${PF}/html" \
		haddockifacedir="/usr/share/doc/${PF}" \
		|| die "Make install failed"

	# for some reason it creates the doc dir even if it is configured
	# to not generate docs, so lets remove the empty dirs in that case
	# (and lets be cautious and only remove them if they're empty)
	if ! use doc; then
		rmdir "${D}/usr/share/doc/${PF}/html"
		rmdir "${D}/usr/share/doc/${PF}"
		rmdir "${D}/usr/share/doc"
		rmdir "${D}/usr/share"
	fi

	# arrange for the packages to be registered
	if ghc-cabal; then
		pkgext=package.conf
	else
		pkgext=pkg
	fi
	ghc-setup-pkg \
		"${D}/usr/$(get_libdir)/gtk2hs/glib.${pkgext}" \
		$(has_version '>=x11-libs/gtk+-2.8' && echo \
			"${D}/usr/$(get_libdir)/gtk2hs/cairo.${pkgext}") \
		"${D}/usr/$(get_libdir)/gtk2hs/gtk.${pkgext}" \
		"${D}/usr/$(get_libdir)/gtk2hs/soegtk.${pkgext}" \
		$(use glade || use gnome && echo \
			"${D}/usr/$(get_libdir)/gtk2hs/glade.${pkgext}") \
		$(use gnome && echo \
			"${D}/usr/$(get_libdir)/gtk2hs/gconf.${pkgext}" \
			"${D}/usr/$(get_libdir)/gtk2hs/gtksourceview2.${pkgext}" \
			"${D}/usr/$(get_libdir)/gtk2hs/svgcairo.${pkgext}" \
			"${D}/usr/$(get_libdir)/gtk2hs/gstreamer.${pkgext}" \
			"${D}/usr/$(get_libdir)/gtk2hs/vte.${pkgext}")
		$(use opengl && echo \
			"${D}/usr/$(get_libdir)/gtk2hs/gtkglext.${pkgext}") \
		$(use seamonkey || use firefox || use xulrunner && echo \
			"${D}/usr/$(get_libdir)/gtk2hs/mozembed.${pkgext}")
	ghc-install-pkg
}
