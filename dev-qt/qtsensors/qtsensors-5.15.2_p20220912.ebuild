# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="5f1f73fdba8906f58c4554cbef9c1a72edcf0230"

inherit qt5-build

DESCRIPTION="Hardware sensor access library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtsensors/-/archive/5f1f73fdba8906f58c4554cbef9c1a72edcf0230/qtsensors-5f1f73fdba8906f58c4554cbef9c1a72edcf0230.tar.bz2 -> qtsensors-5f1f73fdba8906f58c4554cbef9c1a72edcf0230.tar.bz2"

KEYWORDS="*"

# TODO: simulator
IUSE="qml"

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdbus-5.15.2*
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
"
DEPEND="${RDEPEND}"

src_prepare() {
	qt_use_disable_mod qml quick \
		src/src.pro

	qt5-build_src_prepare
}