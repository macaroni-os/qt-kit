# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="d30a77111835395828fdcaa89a88110c5d9f6857"

inherit qt5-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtscxml/-/archive/d30a77111835395828fdcaa89a88110c5d9f6857/qtscxml-d30a77111835395828fdcaa89a88110c5d9f6857.tar.bz2 -> qtscxml-d30a77111835395828fdcaa89a88110c5d9f6857.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"