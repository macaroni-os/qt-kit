# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="6834b183966d08d9f061642ee7ea2d482cbbf073"

inherit qt5-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtscxml/-/archive/6834b183966d08d9f061642ee7ea2d482cbbf073/qtscxml-6834b183966d08d9f061642ee7ea2d482cbbf073.tar.bz2 -> qtscxml-6834b183966d08d9f061642ee7ea2d482cbbf073.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"