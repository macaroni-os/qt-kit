# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qt6-build

DESCRIPTION="Module provides a set of easy-to-use chart components"
SRC_URI="https://download.qt.io/archive/qt/6.8/6.8.3/submodules/qtcharts-everywhere-src-6.8.3.tar.xz -> qtcharts-everywhere-src-6.8.3.tar.xz"
SLOT=6
LICENSE="GPL-3"

KEYWORDS="*"
IUSE="qml"

DEPEND="
	~dev-qt/qtbase-${PV}:6[gui]
	qml? ( ~dev-qt/qtdeclarative-${PV}:6 )
"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake_use_find_package qml Qt6Qml)
	)

	qt6-build_src_configure
}
