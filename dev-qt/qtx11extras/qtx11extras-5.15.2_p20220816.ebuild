# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="982f20eb585d77e5b5c721e05a466d7161f7f2d1"

inherit qt5-build

DESCRIPTION="Linux/X11-specific support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtx11extras/-/archive/982f20eb585d77e5b5c721e05a466d7161f7f2d1/qtx11extras-982f20eb585d77e5b5c721e05a466d7161f7f2d1.tar.bz2 -> qtx11extras-982f20eb585d77e5b5c721e05a466d7161f7f2d1.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*[X]
"
DEPEND="${RDEPEND}
	test? ( =dev-qt/qtwidgets-5.15.2* )
"