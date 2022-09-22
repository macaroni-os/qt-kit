# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="f9f7eee60adac72fcf6617d164e3bf61222bb5c5"

inherit qt5-build

DESCRIPTION="Qt module to access CAN, ModBus, and other industrial serial buses and protocols"
SRC_URI="https://invent.kde.org/qt/qt/qtserialbus/-/archive/f9f7eee60adac72fcf6617d164e3bf61222bb5c5/qtserialbus-f9f7eee60adac72fcf6617d164e3bf61222bb5c5.tar.bz2 -> qtserialbus-f9f7eee60adac72fcf6617d164e3bf61222bb5c5.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtserialport-5.15.2*
"
RDEPEND="${DEPEND}"