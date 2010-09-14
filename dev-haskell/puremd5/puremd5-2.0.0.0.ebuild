# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="pureMD5"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A Haskell-only implementation of the MD5 digest (hash) algorithm."
HOMEPAGE="http://hackage.haskell.org/package/puremd5"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.4.0
		<dev-haskell/binary-0.6.0
		>=dev-haskell/cereal-0.2
		>=dev-haskell/crypto-api-0.0.0.1
		dev-haskell/quickcheck
		dev-haskell/tagged
		>=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"
