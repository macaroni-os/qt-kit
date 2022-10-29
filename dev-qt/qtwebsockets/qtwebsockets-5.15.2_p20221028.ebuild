# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="594477769ecac4032ba116196493f3ba3db1aaed"

inherit qt5-build

DESCRIPTION="Implementation of the WebSocket protocol for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtwebsockets/-/archive/594477769ecac4032ba116196493f3ba3db1aaed/qtwebsockets-594477769ecac4032ba116196493f3ba3db1aaed.tar.bz2 -> qtwebsockets-594477769ecac4032ba116196493f3ba3db1aaed.tar.bz2"

KEYWORDS="*"

IUSE="qml +ssl"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*[ssl=]
	qml? ( =dev-qt/qtdeclarative-5.15.2* )

"
RDEPEND="${DEPEND}"

src_prepare() {
	qt_use_disable_mod qml quick src/src.pro

	qt5-build_src_prepare
}