# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="53fa44709992faae54e4f5c8a128cea7b6f0cbd5"

inherit qt5-build

DESCRIPTION="Module for displaying web content in a QML application using the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtwebview/-/archive/53fa44709992faae54e4f5c8a128cea7b6f0cbd5/qtwebview-53fa44709992faae54e4f5c8a128cea7b6f0cbd5.tar.bz2 -> qtwebview-53fa44709992faae54e4f5c8a128cea7b6f0cbd5.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtwebengine-5.15.2*:5
"
RDEPEND="${DEPEND}"