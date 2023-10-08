# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="f078642eb9a440f6aa88f2beaf10f445de1e29bb"

inherit qt5-build

DESCRIPTION="Module for displaying web content in a QML application using the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtwebview/-/archive/f078642eb9a440f6aa88f2beaf10f445de1e29bb/qtwebview-f078642eb9a440f6aa88f2beaf10f445de1e29bb.tar.bz2 -> qtwebview-f078642eb9a440f6aa88f2beaf10f445de1e29bb.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtwebengine-5.15.2*:5
"
RDEPEND="${DEPEND}"