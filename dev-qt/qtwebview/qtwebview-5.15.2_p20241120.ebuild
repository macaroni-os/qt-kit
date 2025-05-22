# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="f16dadb6d147c46565537ede46518a352cdd87c9"

inherit qt5-build

DESCRIPTION="Module for displaying web content in a QML application using the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtwebview/-/archive/f16dadb6d147c46565537ede46518a352cdd87c9/qtwebview-f16dadb6d147c46565537ede46518a352cdd87c9.tar.bz2 -> qtwebview-f16dadb6d147c46565537ede46518a352cdd87c9.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtwebengine-5.15.2*:5
"
RDEPEND="${DEPEND}"