# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="X.509 Certificate and CRL validation"
HOMEPAGE="https://github.com/kazu-yamamoto/crypton-certificate"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/asn1-encoding-0.9:=[profile?] <dev-haskell/asn1-encoding-0.10:=[profile?]
	>=dev-haskell/asn1-types-0.3:=[profile?] <dev-haskell/asn1-types-0.4:=[profile?]
	>=dev-haskell/crypton-0.24:=[profile?]
	>=dev-haskell/crypton-x509-1.7.5:=[profile?]
	>=dev-haskell/crypton-x509-store-1.6:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/hourglass:=[profile?]
	dev-haskell/memory:=[profile?]
	>=dev-haskell/pem-0.1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/tasty
		dev-haskell/tasty-hunit )
"