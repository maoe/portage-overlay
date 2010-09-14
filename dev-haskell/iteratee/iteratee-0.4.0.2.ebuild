# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Iteratee-based I/O"
HOMEPAGE="http://inmachina.net/~jwlato/haskell/iteratee"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/listlike-1.0
		<dev-haskell/listlike-2
		>dev-haskell/monadcatchio-transformers-0.2
		<dev-haskell/monadcatchio-transformers-0.3
		=dev-haskell/transformers-0.2*
		>=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"