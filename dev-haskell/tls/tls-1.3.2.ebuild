# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="TLS/SSL protocol native implementation (Server and Client)"
HOMEPAGE="https://github.com/vincenthz/hs-tls"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+compat"

RDEPEND="dev-haskell/asn1-encoding:=[profile?]
	>=dev-haskell/asn1-types-0.2.0:=[profile?]
	dev-haskell/async:=[profile?]
	>=dev-haskell/cereal-0.4:=[profile?]
	>=dev-haskell/cryptonite-0.3:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	dev-haskell/memory:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-haskell/x509-1.6:=[profile?] <dev-haskell/x509-1.7.0:=[profile?]
	>=dev-haskell/x509-store-1.6:=[profile?]
	>=dev-haskell/x509-validation-1.6:=[profile?] <dev-haskell/x509-validation-1.7.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/hourglass
		dev-haskell/quickcheck
		dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag compat compat)
}
