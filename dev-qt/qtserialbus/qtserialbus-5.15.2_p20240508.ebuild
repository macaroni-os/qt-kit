# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="616bc5b962cdcacb1c1ba985d7236392e9cadb8c"

inherit qt5-build

DESCRIPTION="Qt module to access CAN, ModBus, and other industrial serial buses and protocols"
SRC_URI="https://invent.kde.org/qt/qt/qtserialbus/-/archive/616bc5b962cdcacb1c1ba985d7236392e9cadb8c/qtserialbus-616bc5b962cdcacb1c1ba985d7236392e9cadb8c.tar.bz2 -> qtserialbus-616bc5b962cdcacb1c1ba985d7236392e9cadb8c.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtserialport-5.15.2*
"
RDEPEND="${DEPEND}"