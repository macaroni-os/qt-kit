# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="b3081c36baee48b43b6285b4811dc6da451e2390"

inherit qt5-build

DESCRIPTION="Qt module to access CAN, ModBus, and other industrial serial buses and protocols"
SRC_URI="https://invent.kde.org/qt/qt/qtserialbus/-/archive/b3081c36baee48b43b6285b4811dc6da451e2390/qtserialbus-b3081c36baee48b43b6285b4811dc6da451e2390.tar.bz2 -> qtserialbus-b3081c36baee48b43b6285b4811dc6da451e2390.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtserialport-5.15.2*
"
RDEPEND="${DEPEND}"