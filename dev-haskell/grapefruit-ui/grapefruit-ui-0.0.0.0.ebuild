# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Declarative user interface programming"
HOMEPAGE="http://haskell.org/haskellwiki/Grapefruit"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1
        >=dev-haskell/arrows-0.2
        <dev-haskell/arrows-0.5
        =dev-haskell/grapefruit-frp-0.0*
        =dev-haskell/grapefruit-records-0.0*"
