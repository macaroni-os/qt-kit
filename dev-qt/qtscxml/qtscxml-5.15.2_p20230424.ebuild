# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="7f276be586be79d41213a8dd05ef31144313d440"

inherit qt5-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtscxml/-/archive/7f276be586be79d41213a8dd05ef31144313d440/qtscxml-7f276be586be79d41213a8dd05ef31144313d440.tar.bz2 -> qtscxml-7f276be586be79d41213a8dd05ef31144313d440.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"