# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A test package"
HOMEPAGE="https://github.com/hacking-actions/test-package"
LICENSE="MIT"

if [[ ${PV} = *9999* ]]; then
    inherit git-r3
    EGIT_REPO_URI="https://github.com/GITHUB_REPOSITORY"
    EGIT_BRANCH="GITHUB_REF"
else
    SRC_URI="https://github.com/hacking-actions/test-package/archive/${P}.tar.bz2"
fi

KEYWORDS="amd64 x86"
IUSE="test"
SLOT="0"

RESTRICT="!test? ( test )"

RDEPEND="sys-apps/util-linux"
DEPEND="test? ( dev-util/bats-assert )"

src_test() {
    echo
}

src_install() {
    einstalldocs
}
