# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="2653044915b3fb1941aa0f8b25af50343efcbff7"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/2653044915b3fb1941aa0f8b25af50343efcbff7/qtnetworkauth-2653044915b3fb1941aa0f8b25af50343efcbff7.tar.bz2 -> qtnetworkauth-2653044915b3fb1941aa0f8b25af50343efcbff7.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"