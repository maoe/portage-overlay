# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

CABAL_FEATURES="bin lib profile haddock"
EGIT_REPO_URI="http://github.com/greenrd/scion.git"
EGIT_BRANCH="devel"

inherit git haskell-cabal elisp-common

DESCRIPTION="IDE library for Haskell based on the GHC API."
HOMEPAGE="http://code.google.com/p/scion-lib/"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc profile hscolour emacs server"

DEPEND=">=dev-lang/ghc-6.10
	<dev-lang/ghc-6.13
	=dev-haskell/ghc-paths-0.1*
	=dev-haskell/ghc-syb-0.1*
	=dev-haskell/hslogger-1.0*
	=dev-haskell/json-0.4*
	>=dev-haskell/multiset-0.1
	<dev-haskell/multiset-0.3
	=dev-haskell/time-1.1*
	>=dev-haskell/uniplate-1.2
	=dev-haskell/list-tries-0.1*
	=dev-haskell/binary-0.5*
	server? ( =dev-haskell/network-bytestring-0.1*
			  =dev-haskell/utf8-string-0.3* )
	emacs? ( app-editors/emacs )"

RDEPEND="${DEPEND}"

SITEFILE="60${PN}-gentoo.el"

src_compile() {
	if use server; then
		CABAL_CONFIGURE_FLAGS="-f server"
	fi
	cabal_src_compile

	use emacs && elisp-compile emacs/scion.el
}

src_install() {
	cabal_src_install

	if use emacs; then
		elisp-install ${PN} emacs/scion.el || die "elisp-install failed."
		elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die "elisp-site-file-install failed."
	fi
}

pkg_postinst() {
	ghc-package_pkg_postinst
	use emacs && elisp-site-regen
}

pkg_postrm() {
	use emacs && elisp-site-regen
}

