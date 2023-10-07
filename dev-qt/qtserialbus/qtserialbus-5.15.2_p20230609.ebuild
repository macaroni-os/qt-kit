# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="c41785c9f36560722b917d373ee97eed8cc4089a"

inherit qt5-build

DESCRIPTION="Qt module to access CAN, ModBus, and other industrial serial buses and protocols"
SRC_URI="https://invent.kde.org/qt/qt/qtserialbus/-/archive/c41785c9f36560722b917d373ee97eed8cc4089a/qtserialbus-c41785c9f36560722b917d373ee97eed8cc4089a.tar.bz2 -> qtserialbus-c41785c9f36560722b917d373ee97eed8cc4089a.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtserialport-5.15.2*
"
RDEPEND="${DEPEND}"