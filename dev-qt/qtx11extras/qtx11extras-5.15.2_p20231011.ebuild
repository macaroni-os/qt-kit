# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="aaa54153970d1d63a44b873cad5f62ffa71ef9b8"

inherit qt5-build

DESCRIPTION="Linux/X11-specific support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtx11extras/-/archive/aaa54153970d1d63a44b873cad5f62ffa71ef9b8/qtx11extras-aaa54153970d1d63a44b873cad5f62ffa71ef9b8.tar.bz2 -> qtx11extras-aaa54153970d1d63a44b873cad5f62ffa71ef9b8.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*[X]
"
DEPEND="${RDEPEND}
	test? ( =dev-qt/qtwidgets-5.15.2* )
"