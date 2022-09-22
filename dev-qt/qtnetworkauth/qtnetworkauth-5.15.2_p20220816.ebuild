# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="01315e31c5164c896a524175854c4b6df17fe166"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/01315e31c5164c896a524175854c4b6df17fe166/qtnetworkauth-01315e31c5164c896a524175854c4b6df17fe166.tar.bz2 -> qtnetworkauth-01315e31c5164c896a524175854c4b6df17fe166.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"