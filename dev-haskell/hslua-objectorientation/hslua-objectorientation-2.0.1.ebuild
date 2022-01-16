# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Object orientation tools for HsLua"
HOMEPAGE="https://hslua.org/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/exceptions-0.8:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/hslua-core-2.0:=[profile?] <dev-haskell/hslua-core-2.1:=[profile?]
	>=dev-haskell/hslua-marshalling-2.0.1:=[profile?] <dev-haskell/hslua-marshalling-2.1:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/lua-arbitrary-1.0
		>=dev-haskell/quickcheck-2.7
		>=dev-haskell/quickcheck-instances-0.3
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-hslua-1.0
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-quickcheck-0.8 )
"
