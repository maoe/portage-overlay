# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Type-level programming library"
HOMEPAGE="http://code.haskell.org/type-level"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1"

src_unpack() {
	unpack "${A}"
	epatch "${FILESDIR}/${P}-cabal-syb.patch"
}
