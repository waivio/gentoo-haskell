# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1
#hackport: flags: -no-ghc-lib,+auto

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Algorithms on GHC parse trees"
HOMEPAGE="https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/ghc-lib-parser-9.2:=[profile?] <dev-haskell/ghc-lib-parser-9.3:=[profile?]
	>=dev-haskell/uniplate-1.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/extra-1.6
		>=dev-haskell/tasty-1.2
		>=dev-haskell/tasty-hunit-0.10.0
		>=dev-haskell/uniplate-1.6.12 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=auto \
		--flag=-no-ghc-lib
}
