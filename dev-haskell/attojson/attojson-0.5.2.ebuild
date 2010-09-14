# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="AttoJson"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Simple lightweight JSON parser & generator based on ByteString"
HOMEPAGE="http://github.com/konn/AttoJSON"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.8
		>=dev-haskell/bytestring-show-0.1
		>=dev-haskell/mtl-1.0
		>=dev-haskell/utf8-string-0.1
		>=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"
