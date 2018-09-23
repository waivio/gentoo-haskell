# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999
#hackport: flags: -dev

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="ExactPrint for GHC"
HOMEPAGE="http://hackage.haskell.org/package/ghc-exactprint"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="roundtrip"

RESTRICT=test # slow

RDEPEND=">=dev-lang/ghc-7.4.1:=
	>=dev-haskell/free-4.12:=[profile?]
	roundtrip? ( dev-haskell/diff:=[profile?]
			dev-haskell/filemanip:=[profile?]
			>=dev-haskell/ghc-paths-0.1:=[profile?]
			dev-haskell/hunit:=[profile?]
			>=dev-haskell/text-1.2.2:=[profile?]
			>=dev-haskell/turtle-1.3.0:=[profile?]
			>=dev-lang/ghc-7.10.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/filemanip-0.3
		>=dev-haskell/hunit-1.2
		>=dev-haskell/mtl-2.2.1
		>=dev-haskell/silently-1.2
		>=dev-haskell/syb-0.5
		!roundtrip? ( dev-haskell/diff
				>=dev-haskell/ghc-paths-0.1
				>=dev-lang/ghc-7.10.2 ) )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev \
		$(cabal_flag roundtrip roundtrip)
}
