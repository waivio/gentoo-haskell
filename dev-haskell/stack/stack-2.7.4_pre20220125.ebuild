# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -disable-git-info,-hide-dependency-versions,-integration-tests,-static,-supported-build,-developer-mode

# hololeap <hololeap@protonmail.com> (2022-01-25)
# Use patch for now: https://github.com/commercialhaskell/stack/pull/5559
# Rebased commit 336ab51 from brandon-leapyear/chinn/cabal onto aac15d0 from origin/master
REPO_URI="https://github.com/hololeap/stack"
COMMIT="9a0683679ad49982fcfb036f87c0f99a78916d2a"
BRANCH="master"
S="${WORKDIR}/${PN}-${COMMIT}"

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test" # Requires internet access

DESCRIPTION="The Haskell Tool Stack"
HOMEPAGE="https://haskellstack.org"

SRC_URI="${REPO_URI}/archive/${COMMIT}.tar.gz -> ${PN}-${COMMIT}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/annotated-wl-pprint:=[profile?]
	dev-haskell/ansi-terminal:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	dev-haskell/cabal:=[profile?]
	dev-haskell/casa-client:=[profile?]
	dev-haskell/casa-types:=[profile?]
	dev-haskell/colour:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	dev-haskell/cryptonite-conduit:=[profile?]
	dev-haskell/echo:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/file-embed:=[profile?]
	dev-haskell/filelock:=[profile?]
	dev-haskell/fsnotify:=[profile?]
	dev-haskell/generic-deriving:=[profile?]
	dev-haskell/githash:=[profile?]
	dev-haskell/hackage-security:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/hi-file-parser:=[profile?]
	dev-haskell/hpack:=[profile?]
	dev-haskell/http-client:=[profile?]
	dev-haskell/http-client-tls:=[profile?]
	dev-haskell/http-conduit:=[profile?]
	dev-haskell/http-download:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/memory:=[profile?]
	dev-haskell/microlens:=[profile?]
	dev-haskell/mintty:=[profile?]
	dev-haskell/mono-traversable:=[profile?]
	dev-haskell/mustache:=[profile?]
	dev-haskell/neat-interpolation:=[profile?]
	dev-haskell/network-uri:=[profile?]
	dev-haskell/open-browser:=[profile?]
	>=dev-haskell/optparse-applicative-0.14.3.0:=[profile?]
	dev-haskell/optparse-simple:=[profile?]
	>=dev-haskell/pantry-0.5.3:=[profile?]
	dev-haskell/path:=[profile?]
	dev-haskell/path-io:=[profile?]
	dev-haskell/persistent:=[profile?]
	dev-haskell/persistent-sqlite:=[profile?]
	dev-haskell/persistent-template:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/project-template:=[profile?]
	dev-haskell/retry:=[profile?]
	>=dev-haskell/rio-0.1.21.0:=[profile?]
	>=dev-haskell/rio-prettyprint-0.1.1.0:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/streaming-commons:=[profile?]
	dev-haskell/tar:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/text-metrics:=[profile?]
	dev-haskell/th-reify-many:=[profile?]
	dev-haskell/tls:=[profile?]
	dev-haskell/typed-process:=[profile?]
	dev-haskell/unicode-transforms:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/yaml:=[profile?]
	dev-haskell/zip-archive:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
#	test? ( dev-haskell/hspec
#		dev-haskell/quickcheck
#		dev-haskell/raw-strings-qq
#		dev-haskell/smallcheck )

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer-mode \
		--flag=-disable-git-info \
		--flag=-hide-dependency-versions \
		--flag=-integration-tests \
		--flag=-static \
		--flag=-supported-build
}
