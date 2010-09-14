# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Validating an email address string against RFC 5322"
HOMEPAGE="http://porg.es/blog/email-address-validation-simpler-faster-more-correct"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/ranges-0.2.2
		>=dev-lang/ghc-6.8.1
		|| ( ( =dev-haskell/parsec-2.1* ) ( >=dev-haskell/parsec-3.0 ) )"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
