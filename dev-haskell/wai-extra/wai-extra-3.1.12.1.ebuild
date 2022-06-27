# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: build-example:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Provides some basic WAI handlers and middleware"
HOMEPAGE="https://github.com/yesodweb/wai"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/ansi-terminal:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	dev-haskell/call-stack:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?]
	dev-haskell/cookie:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	>=dev-haskell/fast-logger-2.4.5:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	dev-haskell/http2:=[profile?]
	dev-haskell/hunit:=[profile?]
	>=dev-haskell/iproute-1.7.8:=[profile?]
	>=dev-haskell/network-2.6.1.0:=[profile?]
	>=dev-haskell/resourcet-0.4.6:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	>=dev-haskell/streaming-commons-0.2:=[profile?]
	dev-haskell/vault:=[profile?]
	>=dev-haskell/wai-3.0.3.0:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/wai-logger-2.3.7:=[profile?]
	dev-haskell/word8:=[profile?]
	>=dev-lang/ghc-8.6.3:=
	examples? ( dev-haskell/warp:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( >=dev-haskell/hspec-1.3
		dev-haskell/temporary
		dev-haskell/zlib )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples build-example)
}