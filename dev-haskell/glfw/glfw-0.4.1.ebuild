# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="profile haddock lib"
inherit haskell-cabal

MY_PN="GLFW"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A binding for GLFW, An OpenGL Framework"
HOMEPAGE="http://haskell.org/haskellwiki/GLFW"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1
		>=dev-haskell/cabal-1.2
		>=dev-haskell/opengl-2.1
		<dev-haskell/opengl-3
		x11-libs/libX11
		x11-libs/libXrandr"

S="${WORKDIR}/${MY_P}"
