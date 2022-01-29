# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit qt5-build

DESCRIPTION="Set of next generation Qt Quick controls for the Qt5 framework"

if [[ ${QT5_BUILD_TYPE} == release ]]; then
	KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~x86"
fi

IUSE="widgets"

DEPEND="
	>=dev-qt/qtcore-5.15.2-r3
	~dev-qt/qtdeclarative-${PV}
	~dev-qt/qtgui-${PV}
	widgets? ( ~dev-qt/qtwidgets-${PV} )
"
RDEPEND="${DEPEND}
	~dev-qt/qtgraphicaleffects-${PV}
"

src_prepare() {
	qt_use_disable_mod widgets widgets \
		src/imports/platform/platform.pro

	qt5-build_src_prepare
}
