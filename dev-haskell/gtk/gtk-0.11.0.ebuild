# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the Gtk+ graphical user interface library."
HOMEPAGE="http://www.haskell.org/gtk2hs/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/cairo-0.11*
		=dev-haskell/gio-0.11*
		=dev-haskell/glib-0.11*
		dev-haskell/mtl
		=dev-haskell/pango-0.11*
		>=dev-lang/ghc-6.8.1
		dev-libs/glib
		x11-libs/gtk+"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6.0
		dev-haskell/gtk2hs-buildtools"

