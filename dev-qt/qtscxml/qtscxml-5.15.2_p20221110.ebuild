# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="0c93f94a44e2dce7eed9d17d4976b0c1e14be7bb"

inherit qt5-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtscxml/-/archive/0c93f94a44e2dce7eed9d17d4976b0c1e14be7bb/qtscxml-0c93f94a44e2dce7eed9d17d4976b0c1e14be7bb.tar.bz2 -> qtscxml-0c93f94a44e2dce7eed9d17d4976b0c1e14be7bb.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"