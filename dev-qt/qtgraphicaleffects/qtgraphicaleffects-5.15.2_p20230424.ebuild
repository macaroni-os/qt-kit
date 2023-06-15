# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="500ae59f809877e0ada9a68601564882f2733145"

VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Set of QML types for adding visual effects to user interfaces"
SRC_URI="https://invent.kde.org/qt/qt/qtgraphicaleffects/-/archive/500ae59f809877e0ada9a68601564882f2733145/qtgraphicaleffects-500ae59f809877e0ada9a68601564882f2733145.tar.bz2 -> qtgraphicaleffects-500ae59f809877e0ada9a68601564882f2733145.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
"
DEPEND="${RDEPEND}"