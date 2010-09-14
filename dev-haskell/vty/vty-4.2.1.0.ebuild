# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="A simple terminal access library"
HOMEPAGE="http://trac.haskell.org/vty/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-1.1.0.0
		<dev-haskell/mtl-1.2
		<dev-haskell/parallel-2
		>=dev-haskell/parsec-2
		<dev-haskell/parsec-4
		=dev-haskell/terminfo-0.3*
		=dev-haskell/utf8-string-0.3*
		=dev-haskell/vector-space-0.5*
		>=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		dev-haskell/cabal"

