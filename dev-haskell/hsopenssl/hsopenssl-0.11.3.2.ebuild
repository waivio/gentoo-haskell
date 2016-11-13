# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1.9999
#hackport: flags: -homebrew-openssl,-macports-openssl

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HsOpenSSL"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Partial OpenSSL binding for Haskell"
HOMEPAGE="https://github.com/vshabanov/HsOpenSSL"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="libressl"

RESTRICT=test # whoops, not good

RDEPEND=">=dev-haskell/network-2.1:=[profile?] <dev-haskell/network-2.7:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	!libressl? ( dev-libs/openssl:0= )
	libressl? ( dev-libs/libressl:= )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-homebrew-openssl \
		--flag=-macports-openssl
}
