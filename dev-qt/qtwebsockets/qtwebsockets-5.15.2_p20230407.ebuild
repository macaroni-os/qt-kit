# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="ed7416b1b8af9de9926388408469a35f2ad6a795"

inherit qt5-build

DESCRIPTION="Implementation of the WebSocket protocol for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtwebsockets/-/archive/ed7416b1b8af9de9926388408469a35f2ad6a795/qtwebsockets-ed7416b1b8af9de9926388408469a35f2ad6a795.tar.bz2 -> qtwebsockets-ed7416b1b8af9de9926388408469a35f2ad6a795.tar.bz2"

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