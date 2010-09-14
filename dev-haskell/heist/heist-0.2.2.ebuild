# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="An xhtml templating system"
HOMEPAGE="http://snapframework.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.8.0.2
		<dev-haskell/attoparsec-0.9
		dev-haskell/directory-tree
		=dev-haskell/hexpat-0.16*
		>=dev-haskell/monadcatchio-transformers-0.2.1
		<dev-haskell/monadcatchio-transformers-0.3
		dev-haskell/monads-fd
		dev-haskell/transformers
		>=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

