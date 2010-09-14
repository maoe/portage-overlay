# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Type-safe, non-relational, multi-backend persistence."
HOMEPAGE="http://docs.yesodweb.com/persistent/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/enumerator-0.4*
		=dev-haskell/hamlet-0.5*
		>=dev-haskell/monadcatchio-transformers-0.2.2
		<dev-haskell/monadcatchio-transformers-0.3
		>=dev-haskell/parsec-2.1
		<dev-haskell/parsec-4
		>=dev-haskell/text-0.7.1
		<dev-haskell/text-0.9
		>=dev-haskell/time-1.1.4
		<dev-haskell/time-1.3
		>=dev-haskell/transformers-0.2.1
		<dev-haskell/transformers-0.3
		>=dev-haskell/utf8-string-0.3.4
		<dev-haskell/utf8-string-0.4
		>=dev-haskell/web-routes-quasi-0.6.0
		<dev-haskell/web-routes-quasi-0.7
		>=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
