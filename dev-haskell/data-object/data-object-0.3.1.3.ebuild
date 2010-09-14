# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Represent hierachichal structures, called objects in JSON."
HOMEPAGE="http://github.com/snoyberg/data-object/tree/master"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/failure-0.1.0
		<dev-haskell/failure-0.2
		>=dev-haskell/text-0.5
		<dev-haskell/text-0.9
		>=dev-haskell/time-1.1.4
		<dev-haskell/time-1.3
		>=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"
