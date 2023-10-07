# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="1e3f2196bd45a5ee272b08b1d82cef29aaa89b61"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/1e3f2196bd45a5ee272b08b1d82cef29aaa89b61/qtnetworkauth-1e3f2196bd45a5ee272b08b1d82cef29aaa89b61.tar.bz2 -> qtnetworkauth-1e3f2196bd45a5ee272b08b1d82cef29aaa89b61.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"