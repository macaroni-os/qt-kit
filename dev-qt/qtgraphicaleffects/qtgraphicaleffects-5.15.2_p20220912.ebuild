# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="a2b1600300cda89804d48ec90e0068a075fecc8b"

VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Set of QML types for adding visual effects to user interfaces"
SRC_URI="https://invent.kde.org/qt/qt/qtgraphicaleffects/-/archive/a2b1600300cda89804d48ec90e0068a075fecc8b/qtgraphicaleffects-a2b1600300cda89804d48ec90e0068a075fecc8b.tar.bz2 -> qtgraphicaleffects-a2b1600300cda89804d48ec90e0068a075fecc8b.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
"
DEPEND="${RDEPEND}"