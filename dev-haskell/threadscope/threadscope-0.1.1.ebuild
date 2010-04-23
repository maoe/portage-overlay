# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI="2"

CABAL_FEATURES="bin profile haddock hscolour"
inherit haskell-cabal eutils

DESCRIPTION="A graphical thread profiler"
HOMEPAGE="http://code.haskell.org/ThreadScope/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

# Cheating here: yi needs cabal 1.6, but will only work with 6.10 anyway, so don't specify a dep.
#		=dev-haskell/cabal-1.6*
DEPEND="=dev-lang/ghc-6.12*
		=dev-haskell/binary-0.5*
		dev-haskell/gtk2hs
		x11-libs/cairo
		=x11-libs/gtk+-2*
		gnome-base/libglade"

