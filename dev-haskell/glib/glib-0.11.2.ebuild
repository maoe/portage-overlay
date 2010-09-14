# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the GLIB library for Gtk2Hs."
HOMEPAGE="http://www.haskell.org/gtk2hs/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.8.1
		unknown-pkg-config/glib-2.0
		unknown-pkg-config/gobject-2.0"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6.0
		dev-haskell/gtk2hs-buildtools"