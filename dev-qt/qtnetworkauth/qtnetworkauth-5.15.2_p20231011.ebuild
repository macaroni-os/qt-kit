# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="3fccc9b8fdaff1252fb4a9c516868d0bbbd4384d"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/3fccc9b8fdaff1252fb4a9c516868d0bbbd4384d/qtnetworkauth-3fccc9b8fdaff1252fb4a9c516868d0bbbd4384d.tar.bz2 -> qtnetworkauth-3fccc9b8fdaff1252fb4a9c516868d0bbbd4384d.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"