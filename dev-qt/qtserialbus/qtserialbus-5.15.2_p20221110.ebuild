# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="ced5c7223d037aece1e7f37d4314f388252de025"

inherit qt5-build

DESCRIPTION="Qt module to access CAN, ModBus, and other industrial serial buses and protocols"
SRC_URI="https://invent.kde.org/qt/qt/qtserialbus/-/archive/ced5c7223d037aece1e7f37d4314f388252de025/qtserialbus-ced5c7223d037aece1e7f37d4314f388252de025.tar.bz2 -> qtserialbus-ced5c7223d037aece1e7f37d4314f388252de025.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtserialport-5.15.2*
"
RDEPEND="${DEPEND}"