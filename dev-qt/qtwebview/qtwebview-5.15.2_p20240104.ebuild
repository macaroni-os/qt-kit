# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="3d9289d73c5c03ed5b2fe246589d0d81cfdaa22e"

inherit qt5-build

DESCRIPTION="Module for displaying web content in a QML application using the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtwebview/-/archive/3d9289d73c5c03ed5b2fe246589d0d81cfdaa22e/qtwebview-3d9289d73c5c03ed5b2fe246589d0d81cfdaa22e.tar.bz2 -> qtwebview-3d9289d73c5c03ed5b2fe246589d0d81cfdaa22e.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtwebengine-5.15.2*:5
"
RDEPEND="${DEPEND}"