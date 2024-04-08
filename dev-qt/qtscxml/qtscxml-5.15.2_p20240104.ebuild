# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="6074956c2089dd0507d2930c638fa8c930f4e21c"

inherit qt5-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtscxml/-/archive/6074956c2089dd0507d2930c638fa8c930f4e21c/qtscxml-6074956c2089dd0507d2930c638fa8c930f4e21c.tar.bz2 -> qtscxml-6074956c2089dd0507d2930c638fa8c930f4e21c.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"