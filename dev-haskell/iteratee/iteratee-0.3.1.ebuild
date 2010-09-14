# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal

DESCRIPTION="Iteratee-based I/O"
HOMEPAGE="http://inmachina.net/~jwlato/haskell/iteratee"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1
		=dev-haskell/extensible-exceptions-0.1*
		=dev-haskell/listlike-1*
		>=dev-haskell/transformers-0.1.4
		<dev-haskell/transformers-0.2"
