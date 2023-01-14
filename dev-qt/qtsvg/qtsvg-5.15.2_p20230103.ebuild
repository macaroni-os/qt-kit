# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="a7a0f2491334e8cb4ef5731f5eb741f3f7b9af76"

inherit qt5-build

DESCRIPTION="SVG rendering library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtsvg/-/archive/a7a0f2491334e8cb4ef5731f5eb741f3f7b9af76/qtsvg-a7a0f2491334e8cb4ef5731f5eb741f3f7b9af76.tar.bz2 -> qtsvg-a7a0f2491334e8cb4ef5731f5eb741f3f7b9af76.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtwidgets-5.15.2*
	sys-libs/zlib:=
"
DEPEND="${RDEPEND}
	test? ( =dev-qt/qtxml-5.15.2* )
"