# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit base haskell-cabal

DESCRIPTION="Convert streams of builders to streams of bytestrings."
HOMEPAGE="http://github.com/snoyberg/conduit"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-builder-0.2.1.4[profile?]
		<dev-haskell/blaze-builder-0.4[profile?]
		=dev-haskell/conduit-0.5*[profile?]
		>=dev-haskell/text-0.11[profile?]
		>=dev-haskell/transformers-0.2.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		test? ( dev-haskell/hspec
			dev-haskell/hunit
			dev-haskell/quickcheck
		)
		>=dev-haskell/cabal-1.8"

PATCHES=("${FILESDIR}/${PN}-0.5.0-ghc-7.7.patch")
