# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qt6-build

DESCRIPTION="Implementation of the WebSocket protocol for the Qt6 framework"
SRC_URI="https://download.qt.io/archive/qt/6.8/6.8.3/submodules/qtwebsockets-everywhere-src-6.8.3.tar.xz -> qtwebsockets-everywhere-src-6.8.3.tar.xz"
SLOT=6

KEYWORDS="*"
IUSE="qml +ssl"

DEPEND="
	~dev-qt/qtbase-${PV}:6
	qml? ( ~dev-qt/qtdeclarative-${PV}:6 )
"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake_use_find_package qml Qt6Quick)
	)

	qt6-build_src_configure
}
