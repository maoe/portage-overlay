# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal

MY_PN=FTGL
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Portable TrueType font rendering for OpenGL using the Freetype2 library"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 sparc x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.4
	    dev-haskell/opengl
        media-libs/ftgl"

S="${WORKDIR}/${MY_P}"
