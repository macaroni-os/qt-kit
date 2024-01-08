# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="3f56c6b4bd1e3883581340243b4a7289807fffc9"

inherit qt5-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtscxml/-/archive/3f56c6b4bd1e3883581340243b4a7289807fffc9/qtscxml-3f56c6b4bd1e3883581340243b4a7289807fffc9.tar.bz2 -> qtscxml-3f56c6b4bd1e3883581340243b4a7289807fffc9.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"