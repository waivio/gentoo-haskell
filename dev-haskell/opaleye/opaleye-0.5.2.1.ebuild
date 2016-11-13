# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An SQL-generating DSL targeting PostgreSQL"
HOMEPAGE="https://github.com/tomjaguarpaw/haskell-opaleye"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-1.1:=[profile?]
	>=dev-haskell/attoparsec-0.10.3:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base16-bytestring-0.1.1.6:=[profile?] <dev-haskell/base16-bytestring-0.2:=[profile?]
	>=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/contravariant-1.2:=[profile?] <dev-haskell/contravariant-1.5:=[profile?]
	>=dev-haskell/postgresql-simple-0.5:=[profile?] <dev-haskell/postgresql-simple-0.6:=[profile?]
	>=dev-haskell/product-profunctors-0.6.2:=[profile?] <dev-haskell/product-profunctors-0.8:=[profile?]
	>=dev-haskell/profunctors-4.0:=[profile?] <dev-haskell/profunctors-5.3:=[profile?]
	>=dev-haskell/semigroups-0.13:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/time-locale-compat-0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-haskell/uuid-1.3:=[profile?] <dev-haskell/uuid-1.4:=[profile?]
	>=dev-haskell/void-0.4:=[profile?] <dev-haskell/void-0.8:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	test? ( dev-haskell/multiset
		dev-haskell/quickcheck )
"
