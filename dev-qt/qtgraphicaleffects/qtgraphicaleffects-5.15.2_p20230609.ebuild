# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="cce7d784237cd2dd4af1abe2757d048e34e02685"

VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Set of QML types for adding visual effects to user interfaces"
SRC_URI="https://invent.kde.org/qt/qt/qtgraphicaleffects/-/archive/cce7d784237cd2dd4af1abe2757d048e34e02685/qtgraphicaleffects-cce7d784237cd2dd4af1abe2757d048e34e02685.tar.bz2 -> qtgraphicaleffects-cce7d784237cd2dd4af1abe2757d048e34e02685.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
"
DEPEND="${RDEPEND}"