# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="77dae896b13e36969fefdfa25d711e455d58597b"

inherit qt5-build

DESCRIPTION="Qt module to access CAN, ModBus, and other industrial serial buses and protocols"
SRC_URI="https://invent.kde.org/qt/qt/qtserialbus/-/archive/77dae896b13e36969fefdfa25d711e455d58597b/qtserialbus-77dae896b13e36969fefdfa25d711e455d58597b.tar.bz2 -> qtserialbus-77dae896b13e36969fefdfa25d711e455d58597b.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtserialport-5.15.2*
"
RDEPEND="${DEPEND}"