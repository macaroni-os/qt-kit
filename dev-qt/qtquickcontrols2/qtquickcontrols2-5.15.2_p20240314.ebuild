# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="1fc98160580fc7b791e20d34ba986c9992cae9c5"

inherit qt5-build

DESCRIPTION="Set of next generation Qt Quick controls for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtquickcontrols2/-/archive/1fc98160580fc7b791e20d34ba986c9992cae9c5/qtquickcontrols2-1fc98160580fc7b791e20d34ba986c9992cae9c5.tar.bz2 -> qtquickcontrols2-1fc98160580fc7b791e20d34ba986c9992cae9c5.tar.bz2"

KEYWORDS="*"

IUSE="widgets"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
	widgets? ( =dev-qt/qtwidgets-5.15.2* )
"
RDEPEND="${DEPEND}
	=dev-qt/qtgraphicaleffects-5.15.2*
"

src_prepare() {
	qt_use_disable_mod widgets widgets \
		src/imports/platform/platform.pro

	qt5-build_src_prepare
}