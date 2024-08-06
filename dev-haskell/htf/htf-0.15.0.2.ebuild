# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_PN="HTF"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The Haskell Test Framework"
HOMEPAGE="https://github.com/skogsbaer/HTF/"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="executable"

RESTRICT="test" # Various odd test failures

CABAL_TEST_REQUIRED_BINS=(
	htfpp
)

PATCHES=(
	"${FILESDIR}/${PN}-0.15.0.0-add-executable-flag.patch"
)

RDEPEND="
	>=dev-haskell/aeson-0.11:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	>=dev-haskell/cpphs-1.19:=[profile?]
	>=dev-haskell/diff-0.3:=[profile?]
	dev-haskell/haskell-src:=[profile?]
	>=dev-haskell/hunit-1.2.5:=[profile?]
	>=dev-haskell/lifted-base-0.1:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?]
	>=dev-haskell/old-time-1.0:=[profile?]
	>=dev-haskell/quickcheck-2.3:=[profile?]
	>=dev-haskell/random-1.0:=[profile?]
	>=dev-haskell/regex-compat-0.92:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/xmlgen-0.6:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	>=dev-haskell/cpphs-1.19
	test? (
		dev-haskell/aeson-pretty
		>=dev-haskell/temporary-1.1
		>=dev-haskell/unordered-containers-0.2
	)
"

src_prepare() {
	haskell-cabal_src_prepare

	chmod +x "${S}/scripts/local-htfpp" || die
}

src_configure() {
	if use executable || use test; then
		local exe_flag=executable
	else
		local exe_flag=-executable
	fi

	haskell-cabal_src_configure \
		--flag="${exe_flag}"
}

src_compile() {

	# Tests are a bit odd and require a functional htfpp binary to build them
	# (htfpp is used as a pre-processor when building the tests).
	if use test; then

		# First, we build only the library and executable
		cabal-build "lib:${CABAL_PN}" "exe:htfpp"

		# We compile everything else with the knowledge of where the library
		# and executable live
		LD_LIBRARY_PATH="${S}/dist/build${LD_LIBRARY_PATH+:}${LD_LIBRARY_PATH}" \
			PATH="${S}/dist/build/htfpp${PATH+:}${PATH}" \
			haskell-cabal_src_compile
	else
		haskell-cabal_src_compile
	fi
}

src_install() {
	local install_components=(
		"lib:${CABAL_PN}"
	)
	use executable && install_components+=( "exe:htfpp" )

	haskell-cabal_src_install "${install_components[@]}"
}