# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e33716bd6bb8926688fef20cb568e11618d08a35"

VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Set of QML types for adding visual effects to user interfaces"
SRC_URI="https://invent.kde.org/qt/qt/qtgraphicaleffects/-/archive/e33716bd6bb8926688fef20cb568e11618d08a35/qtgraphicaleffects-e33716bd6bb8926688fef20cb568e11618d08a35.tar.bz2 -> qtgraphicaleffects-e33716bd6bb8926688fef20cb568e11618d08a35.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
"
DEPEND="${RDEPEND}"