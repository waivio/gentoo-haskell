# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6
#hackport: flags: example:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="OAuth 2.0 authentication plugins"
HOMEPAGE="https://github.com/thoughtbot/yesod-auth-oauth2"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-1.4:=[profile?]
	dev-haskell/errors:=[profile?]
	>=dev-haskell/hoauth2-1.3.0:=[profile?] <dev-haskell/hoauth2-1.8:=[profile?]
	>=dev-haskell/http-client-0.4.0:=[profile?] <dev-haskell/http-client-0.6:=[profile?]
	>=dev-haskell/http-conduit-2.0:=[profile?] <dev-haskell/http-conduit-3.0:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	dev-haskell/microlens:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	>=dev-haskell/text-0.7:=[profile?] <dev-haskell/text-2.0:=[profile?]
	dev-haskell/uri-bytestring:=[profile?]
	>=dev-haskell/yesod-auth-1.6.0:=[profile?] <dev-haskell/yesod-auth-1.7:=[profile?]
	>=dev-haskell/yesod-core-1.6.0:=[profile?] <dev-haskell/yesod-core-1.7:=[profile?]
	>=dev-lang/ghc-8.0.1:=
	examples? ( dev-haskell/aeson-pretty:=[profile?]
			dev-haskell/load-env:=[profile?]
			dev-haskell/warp:=[profile?]
			dev-haskell/yesod:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/hspec )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples example)
}
