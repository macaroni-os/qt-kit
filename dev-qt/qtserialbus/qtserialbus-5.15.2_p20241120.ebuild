# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="971adee604b772d79686126fe8b1e333824f67dc"

inherit qt5-build

DESCRIPTION="Qt module to access CAN, ModBus, and other industrial serial buses and protocols"
SRC_URI="https://invent.kde.org/qt/qt/qtserialbus/-/archive/971adee604b772d79686126fe8b1e333824f67dc/qtserialbus-971adee604b772d79686126fe8b1e333824f67dc.tar.bz2 -> qtserialbus-971adee604b772d79686126fe8b1e333824f67dc.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtserialport-5.15.2*
"
RDEPEND="${DEPEND}"