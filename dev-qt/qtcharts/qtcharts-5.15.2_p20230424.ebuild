# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="7ce22b0633eb9d1eb59854fee4f2f545e1b842e0"

inherit qt5-build

DESCRIPTION="Chart component library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtcharts/-/archive/7ce22b0633eb9d1eb59854fee4f2f545e1b842e0/qtcharts-7ce22b0633eb9d1eb59854fee4f2f545e1b842e0.tar.bz2 -> qtcharts-7ce22b0633eb9d1eb59854fee4f2f545e1b842e0.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE="qml"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtwidgets-5.15.2*
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
"
RDEPEND="${DEPEND}"

src_prepare() {
	qt_use_disable_mod qml quick \
		src/src.pro

	qt5-build_src_prepare
}