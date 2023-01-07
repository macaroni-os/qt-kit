# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="4119e4e6dc94447d773a01c1d6e4de0fefb9235a"

VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Set of QML types for adding visual effects to user interfaces"
SRC_URI="https://invent.kde.org/qt/qt/qtgraphicaleffects/-/archive/4119e4e6dc94447d773a01c1d6e4de0fefb9235a/qtgraphicaleffects-4119e4e6dc94447d773a01c1d6e4de0fefb9235a.tar.bz2 -> qtgraphicaleffects-4119e4e6dc94447d773a01c1d6e4de0fefb9235a.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
"
DEPEND="${RDEPEND}"