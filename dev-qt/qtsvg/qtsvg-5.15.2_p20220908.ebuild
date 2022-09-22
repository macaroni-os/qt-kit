# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="a9752b00a03438de8e5b080073816e12409404b7"

inherit qt5-build

DESCRIPTION="SVG rendering library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtsvg/-/archive/a9752b00a03438de8e5b080073816e12409404b7/qtsvg-a9752b00a03438de8e5b080073816e12409404b7.tar.bz2 -> qtsvg-a9752b00a03438de8e5b080073816e12409404b7.tar.bz2"

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