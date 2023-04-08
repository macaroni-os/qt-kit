# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="dd5d4af65890baad8baa85a445a752a877a4f7e3"

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"
SRC_URI="https://invent.kde.org/qt/qt/qtquicktimeline/-/archive/dd5d4af65890baad8baa85a445a752a877a4f7e3/qtquicktimeline-dd5d4af65890baad8baa85a445a752a877a4f7e3.tar.bz2 -> qtquicktimeline-dd5d4af65890baad8baa85a445a752a877a4f7e3.tar.bz2"

KEYWORDS="*"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"