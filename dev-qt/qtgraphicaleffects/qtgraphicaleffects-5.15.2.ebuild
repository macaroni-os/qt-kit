# Distributed under the terms of the GNU General Public License v2

EAPI=7
VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Set of QML types for adding visual effects to user interfaces"

if [[ ${QT5_BUILD_TYPE} == release ]]; then
	KEYWORDS="~amd64 ~arm ~arm64 ~hppa ~ppc ~ppc64 ~x86"
fi

IUSE=""

RDEPEND="
	>=dev-qt/qtcore-5.15.2-r3
	~dev-qt/qtdeclarative-${PV}
	~dev-qt/qtgui-${PV}
"
DEPEND="${RDEPEND}"
