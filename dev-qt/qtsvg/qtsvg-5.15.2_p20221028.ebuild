# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="83296f10ebdb9a666b11dc69f3a148c38b9c425c"

inherit qt5-build

DESCRIPTION="SVG rendering library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtsvg/-/archive/83296f10ebdb9a666b11dc69f3a148c38b9c425c/qtsvg-83296f10ebdb9a666b11dc69f3a148c38b9c425c.tar.bz2 -> qtsvg-83296f10ebdb9a666b11dc69f3a148c38b9c425c.tar.bz2"

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