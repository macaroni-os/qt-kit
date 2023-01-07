# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="f082a4c84c54e888b8d023ba68b7085551403425"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/f082a4c84c54e888b8d023ba68b7085551403425/qtnetworkauth-f082a4c84c54e888b8d023ba68b7085551403425.tar.bz2 -> qtnetworkauth-f082a4c84c54e888b8d023ba68b7085551403425.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"