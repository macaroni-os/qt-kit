# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
inherit cmake

DESCRIPTION="Qt API for storing passwords securely"
HOMEPAGE="https://github.com/frankosterfeld/qtkeychain"
SRC_URI="https://api.github.com/repos/frankosterfeld/qtkeychain/tarball/refs/tags/0.17.0 -> qtkeychain-0.17.0-875f77d.tar.gz"
LICENSE="BSD"
SLOT="0/1"
KEYWORDS="*"
DOCS=(
	ChangeLog
	ReadMe.md
)
IUSE="+keyring qt5 +qt6"
REQUIRED_USE="^^ ( qt5 qt6 )"
BDEPEND="keyring? ( virtual/pkgconfig )
	qt5? ( dev-qt/linguist-tools:5 )
	qt6? ( dev-qt/qttools:6[linguist] )
	
"
RDEPEND="keyring? ( app-crypt/libsecret )
	qt5? (
	  dev-qt/qtcore:5
	  dev-qt/qtdbus:5
	)
	qt6? ( dev-qt/qtbase:6 )
	
"
DEPEND="${RDEPEND}
"

post_src_unpack() {
	mv frankosterfeld-qtkeychain-* ${S}
}


src_configure() {
	local mycmakeargs=(
	  -DBUILD_WITH_QT5=$(usex qt5)
	  -DBUILD_TEST_APPLICATION=OFF
	  -DBUILD_TRANSLATIONS=ON
	  -DLIBSECRET_SUPPORT=$(usex keyring)
	)
	cmake_src_configure
}

pkg_postinst() {
	if ! use keyring ; then
	  elog "libsecret support is disabled. Secrets are stored via kwallet when it"
	  elog "is reachable on the session bus, and in a plaintext file otherwise."
	  elog "Enable USE=keyring, or make sure kwalletmanager is installed and running."
	fi
}



# vim: filetype=ebuild
