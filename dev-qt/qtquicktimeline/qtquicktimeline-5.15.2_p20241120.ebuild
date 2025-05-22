# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="c4f13dd78d6cf2df83335ad0328b892ce4b2ef70"

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"
SRC_URI="https://invent.kde.org/qt/qt/qtquicktimeline/-/archive/c4f13dd78d6cf2df83335ad0328b892ce4b2ef70/qtquicktimeline-c4f13dd78d6cf2df83335ad0328b892ce4b2ef70.tar.bz2 -> qtquicktimeline-c4f13dd78d6cf2df83335ad0328b892ce4b2ef70.tar.bz2"

KEYWORDS="*"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"