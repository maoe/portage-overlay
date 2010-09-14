# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="Takusen"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Database library with left-fold interface, for PostgreSQL, Oracle, SQLite, ODBC."
HOMEPAGE="http://darcs.haskell.org/takusen"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl
		dev-haskell/quickcheck
		dev-haskell/time
		>=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"


S="${WORKDIR}/${MY_P}"
