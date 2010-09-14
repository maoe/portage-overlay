# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="XML parser/formatter based on expat"
HOMEPAGE="http://haskell.org/haskellwiki/Hexpat/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/extensible-exceptions-0.1*
		>=dev-haskell/list-0.4
		<dev-haskell/parallel-3.1.0.0
		>=dev-haskell/text-0.5
		dev-haskell/transformers
		>=dev-haskell/utf8-string-0.3.3
		>=dev-lang/ghc-6.8.1
		unknown-c-lib/expat"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

