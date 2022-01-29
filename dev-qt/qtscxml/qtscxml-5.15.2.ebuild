# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit qt5-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt5 framework"

if [[ ${QT5_BUILD_TYPE} == release ]]; then
	KEYWORDS="~amd64 ~arm64 ~x86"
fi

IUSE=""

DEPEND="
	>=dev-qt/qtcore-5.15.2-r3
	~dev-qt/qtdeclarative-${PV}
"
RDEPEND="${DEPEND}"
