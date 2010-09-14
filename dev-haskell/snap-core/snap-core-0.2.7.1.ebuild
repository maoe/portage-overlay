# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Snap: A Haskell Web Framework (Core)"
HOMEPAGE="http://snapframework.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.8.0.2
		<dev-haskell/attoparsec-0.9
		>=dev-haskell/bytestring-mmap-0.2.1
		<dev-haskell/bytestring-mmap-0.3
		dev-haskell/bytestring-nums
		=dev-haskell/cereal-0.2*
		dev-haskell/directory-tree
		=dev-haskell/dlist-0.5*
		>=dev-haskell/iteratee-0.3.1
		<dev-haskell/iteratee-0.4
		=dev-haskell/listlike-1*
		>=dev-haskell/monadcatchio-transformers-0.2.1
		<dev-haskell/monadcatchio-transformers-0.3
		dev-haskell/monads-fd
		>=dev-haskell/text-0.7.1
		<dev-haskell/text-0.8
		dev-haskell/time
		dev-haskell/transformers
		dev-haskell/unix-compat
		dev-haskell/zlib
		>=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

