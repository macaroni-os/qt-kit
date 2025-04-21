# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qt6-build

DESCRIPTION="QtSensors supports a rich API for controlling and providing information about sensors"
SRC_URI="https://download.qt.io/archive/qt/6.8/6.8.3/submodules/qtsensors-everywhere-src-6.8.3.tar.xz -> qtsensors-everywhere-src-6.8.3.tar.xz"
SLOT=6

KEYWORDS="*"
IUSE="qml"

RDEPEND="
	~dev-qt/qtbase-${PV}:6
	qml? ( ~dev-qt/qtdeclarative-${PV}:6 )
"
DEPEND="${RDEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake_use_find_package qml Qt6Qml)
	)

	qt6-build_src_configure
}
