# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qt6-build

DESCRIPTION="Qt module enables keyframe-based animations and parameterization"
SRC_URI="https://download.qt.io/archive/qt/6.8/6.8.3/submodules/qtquicktimeline-everywhere-src-6.8.3.tar.xz -> qtquicktimeline-everywhere-src-6.8.3.tar.xz"
SLOT=6

KEYWORDS="*"
DEPEND="
	=dev-qt/qtbase-${PV}:6
	=dev-qt/qtdeclarative-${PV}:6
"
RDEPEND="${DEPEND}"
