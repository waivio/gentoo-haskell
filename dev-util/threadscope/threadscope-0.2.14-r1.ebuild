# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="A graphical tool for profiling parallel Haskell programs"
HOMEPAGE="https://www.haskell.org/haskellwiki/ThreadScope"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="<dev-haskell/cairo-0.14:=
	<dev-haskell/file-embed-0.1:=
	>=dev-haskell/ghc-events-0.13:=
	<dev-haskell/glib-0.14:=
	>=dev-haskell/gtk-0.12:= <dev-haskell/gtk-0.16:=
	<dev-haskell/mtl-2.3:=
	<dev-haskell/pango-0.14:=
	>=dev-haskell/temporary-1.1:= <dev-haskell/temporary-1.4:=
	<dev-haskell/text-1.3:=
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

PATCHES=( "${FILESDIR}"/${P}-ghc-9.0.patch )

src_prepare() {
	default

	cabal_chdeps \
		'ghc-events >= 0.13 && < 0.16' 'ghc-events >= 0.13' \
		'template-haskell < 2.17' 'template-haskell'
}
