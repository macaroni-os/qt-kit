# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="2b7b19239671784fbf79d6dbc0e985da044ff9dd"

inherit qt5-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtscxml/-/archive/2b7b19239671784fbf79d6dbc0e985da044ff9dd/qtscxml-2b7b19239671784fbf79d6dbc0e985da044ff9dd.tar.bz2 -> qtscxml-2b7b19239671784fbf79d6dbc0e985da044ff9dd.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"