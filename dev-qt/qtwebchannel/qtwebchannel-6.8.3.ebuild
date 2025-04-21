# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qt6-build

DESCRIPTION="Qt module enables peer-to-peer communication between a server (QML/C++ application) and a client"
SRC_URI="https://download.qt.io/archive/qt/6.8/6.8.3/submodules/qtwebchannel-everywhere-src-6.8.3.tar.xz -> qtwebchannel-everywhere-src-6.8.3.tar.xz"
SLOT=6

KEYWORDS="*"
IUSE="qml"

DEPEND="
	=dev-qt/qtbase-${PV}:6
	qml? ( =dev-qt/qtdeclarative-${PV}:6 )
"
RDEPEND="${DEPEND}"

src_prepare() {
	local mycmakeargs=(
	$(cmake_use_find_package qml Qt6Qml)
	)

	qt6-build_src_prepare
}
