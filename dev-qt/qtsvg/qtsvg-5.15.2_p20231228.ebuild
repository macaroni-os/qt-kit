# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="5b1b4a99d6bc98c42a11b7a3f6c9f0b0f9e56f34"

inherit qt5-build

DESCRIPTION="SVG rendering library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtsvg/-/archive/5b1b4a99d6bc98c42a11b7a3f6c9f0b0f9e56f34/qtsvg-5b1b4a99d6bc98c42a11b7a3f6c9f0b0f9e56f34.tar.bz2 -> qtsvg-5b1b4a99d6bc98c42a11b7a3f6c9f0b0f9e56f34.tar.bz2"

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