# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e44c85e8643f2724109993a7b9eaf0dff3530fec"

inherit qt5-build

DESCRIPTION="Linux/X11-specific support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtx11extras/-/archive/e44c85e8643f2724109993a7b9eaf0dff3530fec/qtx11extras-e44c85e8643f2724109993a7b9eaf0dff3530fec.tar.bz2 -> qtx11extras-e44c85e8643f2724109993a7b9eaf0dff3530fec.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*[X]
"
DEPEND="${RDEPEND}
	test? ( =dev-qt/qtwidgets-5.15.2* )
"