# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Robust, reliable performance measurement and analysis"
HOMEPAGE="http://hackage.haskell.org/package/criterion"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

HASKELLDEPS=">=dev-haskell/deepseq-1.1.0.0
		dev-haskell/mtl
		>=dev-haskell/mwc-random-0.5.0.0
		dev-haskell/parallel
		>=dev-haskell/parsec-3.1.0
		>=dev-haskell/statistics-0.5.1.0
		dev-haskell/time
		>=dev-haskell/vector-0.5
		>=dev-haskell/vector-algorithms-0.3"
RDEPEND=">=dev-lang/ghc-6.8.1
		${HASKELLDEPS}"
DEPEND=">=dev-haskell/cabal-1.2
		${RDEPEND}"
