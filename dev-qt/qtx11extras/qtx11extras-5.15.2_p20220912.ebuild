# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="9134cdba9386e408ce2ffe515ca0c3f6f6c66685"

inherit qt5-build

DESCRIPTION="Linux/X11-specific support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtx11extras/-/archive/9134cdba9386e408ce2ffe515ca0c3f6f6c66685/qtx11extras-9134cdba9386e408ce2ffe515ca0c3f6f6c66685.tar.bz2 -> qtx11extras-9134cdba9386e408ce2ffe515ca0c3f6f6c66685.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*[X]
"
DEPEND="${RDEPEND}
	test? ( =dev-qt/qtwidgets-5.15.2* )
"