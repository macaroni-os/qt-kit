# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="690128b2b8fb6d6fbdc43b2b2633f0f1de3f0638"

inherit qt5-build

DESCRIPTION="SVG rendering library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtsvg/-/archive/690128b2b8fb6d6fbdc43b2b2633f0f1de3f0638/qtsvg-690128b2b8fb6d6fbdc43b2b2633f0f1de3f0638.tar.bz2 -> qtsvg-690128b2b8fb6d6fbdc43b2b2633f0f1de3f0638.tar.bz2"

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