# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="2c2b7691ae231f43129d7f2b43984c30883ca4b1"

inherit qt5-build

DESCRIPTION="Implementation of the WebSocket protocol for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtwebsockets/-/archive/2c2b7691ae231f43129d7f2b43984c30883ca4b1/qtwebsockets-2c2b7691ae231f43129d7f2b43984c30883ca4b1.tar.bz2 -> qtwebsockets-2c2b7691ae231f43129d7f2b43984c30883ca4b1.tar.bz2"

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