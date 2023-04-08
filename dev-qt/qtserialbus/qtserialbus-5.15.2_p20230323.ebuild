# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="f8684ae6b0c12b6b21f1547fabe38b60c39f8893"

inherit qt5-build

DESCRIPTION="Qt module to access CAN, ModBus, and other industrial serial buses and protocols"
SRC_URI="https://invent.kde.org/qt/qt/qtserialbus/-/archive/f8684ae6b0c12b6b21f1547fabe38b60c39f8893/qtserialbus-f8684ae6b0c12b6b21f1547fabe38b60c39f8893.tar.bz2 -> qtserialbus-f8684ae6b0c12b6b21f1547fabe38b60c39f8893.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtserialport-5.15.2*
"
RDEPEND="${DEPEND}"