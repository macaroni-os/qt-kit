# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="2c39e673d6c15a84dcc7882d3772fa04cc79f9ed"

VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Set of QML types for adding visual effects to user interfaces"
SRC_URI="https://invent.kde.org/qt/qt/qtgraphicaleffects/-/archive/2c39e673d6c15a84dcc7882d3772fa04cc79f9ed/qtgraphicaleffects-2c39e673d6c15a84dcc7882d3772fa04cc79f9ed.tar.bz2 -> qtgraphicaleffects-2c39e673d6c15a84dcc7882d3772fa04cc79f9ed.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
"
DEPEND="${RDEPEND}"