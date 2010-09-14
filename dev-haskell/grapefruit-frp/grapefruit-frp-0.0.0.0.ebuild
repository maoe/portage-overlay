# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Functional Reactive Programming core"
HOMEPAGE="http://haskell.org/haskellwiki/Grapefruit"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

HASKELLDEPS=">=dev-haskell/arrows-0.2
		<dev-haskell/arrows-0.5
		>=dev-haskell/typecompose-0.3
		<dev-haskell/typecompose-0.7"
RDEPEND=">=dev-lang/ghc-6.8.1
		${HASKELLDEPS}"
DEPEND=">=dev-haskell/cabal-1.2.3
		${RDEPEND}"
