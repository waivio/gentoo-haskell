# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Composable, streaming, and efficient left folds"
HOMEPAGE="https://hackage.haskell.org/package/foldl"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"

PATCHES=(
	"${FILESDIR}/${PN}-1.4.15-cabal-doctest.patch"
)

RDEPEND=">=dev-haskell/comonad-4.0:=[profile?] <dev-haskell/comonad-6:=[profile?]
	<dev-haskell/contravariant-1.6:=[profile?]
	<dev-haskell/hashable-1.5:=[profile?]
	<dev-haskell/primitive-0.9:=[profile?]
	>=dev-haskell/profunctors-4.3.2:=[profile?] <dev-haskell/profunctors-5.7:=[profile?]
	>=dev-haskell/random-1.2:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/semigroupoids-1.0:=[profile?] <dev-haskell/semigroupoids-6.1:=[profile?]
	>=dev-haskell/text-0.11.2.0:=[profile?] <dev-haskell/text-2.1:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? (
		>=dev-haskell/cabal-doctest-1.0.0
		>=dev-haskell/doctest-0.16
	)
"

src_configure() {
	use test && export GHC_BOOTSTRAP_PACKAGES+=( cabal-doctest )

	haskell-cabal_src_configure
}
