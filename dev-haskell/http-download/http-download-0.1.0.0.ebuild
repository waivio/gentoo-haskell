# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Verified downloads with retries"
HOMEPAGE="https://github.com/commercialhaskell/stack#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT="test" #requires network access

RDEPEND=">=dev-haskell/base64-bytestring-1.0.0.1:=[profile?]
	>=dev-haskell/conduit-1.3.0.3:=[profile?]
	>=dev-haskell/conduit-extra-1.3.0:=[profile?]
	>=dev-haskell/cryptonite-0.25:=[profile?]
	>=dev-haskell/cryptonite-conduit-0.2.2:=[profile?]
	>=dev-haskell/exceptions-0.8.3:=[profile?]
	>=dev-haskell/http-client-0.5.13.1:=[profile?]
	>=dev-haskell/http-conduit-2.3.2:=[profile?]
	>=dev-haskell/http-types-0.12.1:=[profile?]
	>=dev-haskell/memory-0.14.16:=[profile?]
	>=dev-haskell/path-0.6.1:=[profile?]
	>=dev-haskell/path-io-1.3.3:=[profile?]
	>=dev-haskell/retry-0.7.6.3:=[profile?]
	>=dev-haskell/rio-0.1.9.2:=[profile?]
	>=dev-haskell/rio-prettyprint-0.1.0.0:=[profile?]
	>=dev-lang/ghc-8.2.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
	test? ( >=dev-haskell/hspec-2.4.8
		>=dev-haskell/hspec-discover-2.4.8 )
"
