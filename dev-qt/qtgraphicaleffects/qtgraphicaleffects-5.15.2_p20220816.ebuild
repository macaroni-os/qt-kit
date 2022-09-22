# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e6e1e58ec28fd0f2e6426e6962cc4ccddb493349"

VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Set of QML types for adding visual effects to user interfaces"
SRC_URI="https://invent.kde.org/qt/qt/qtgraphicaleffects/-/archive/e6e1e58ec28fd0f2e6426e6962cc4ccddb493349/qtgraphicaleffects-e6e1e58ec28fd0f2e6426e6962cc4ccddb493349.tar.bz2 -> qtgraphicaleffects-e6e1e58ec28fd0f2e6426e6962cc4ccddb493349.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
"
DEPEND="${RDEPEND}"