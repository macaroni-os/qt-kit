# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qt6-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt framework"
SRC_URI="https://download.qt.io/archive/qt/6.8/6.8.3/submodules/qtscxml-everywhere-src-6.8.3.tar.xz -> qtscxml-everywhere-src-6.8.3.tar.xz"
SLOT=6

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
