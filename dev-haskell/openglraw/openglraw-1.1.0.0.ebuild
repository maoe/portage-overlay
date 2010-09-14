# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal

MY_PN=OpenGLRaw
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A raw binding for the OpenGL graphics system"
HOMEPAGE="http://haskell.org/HOpenGL/"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 sparc x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.4"

S="${WORKDIR}/${MY_P}"
