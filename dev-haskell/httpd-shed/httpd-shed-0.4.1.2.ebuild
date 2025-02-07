# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: +network-uri,+network-bsd

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A simple web-server with an interact style API"
HOMEPAGE="https://hackage.haskell.org/package/httpd-shed"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="buildexamples"

RDEPEND=">=dev-haskell/network-2.7:=[profile?] <dev-haskell/network-3.3:=[profile?]
	>=dev-haskell/network-bsd-2.7:=[profile?] <dev-haskell/network-bsd-2.9:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildexamples buildexamples) \
		--flag=network-bsd \
		--flag=network-uri
}
