# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal

DESCRIPTION="Monoids, specialized containers and a general map/reduce framework"
HOMEPAGE="http://comonad.com/reader"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1
		>=dev-haskell/fingertree-0.0.1
		<dev-haskell/fingertree-0.2
		=dev-haskell/parallel-1.1*
		>=dev-haskell/text-0.1
		<dev-haskell/text-0.5"
