# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"

if [[ ${QT5_BUILD_TYPE} == release ]]; then
	KEYWORDS="~amd64 ~arm ~x86"
fi

DEPEND="
	>=dev-qt/qtcore-5.15.2-r3
	~dev-qt/qtdeclarative-${PV}
"
RDEPEND="${DEPEND}"
