# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="b1b4b882dabaa036c3fb73c4a879ba8efbb02ded"

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"
SRC_URI="https://invent.kde.org/qt/qt/qtquicktimeline/-/archive/b1b4b882dabaa036c3fb73c4a879ba8efbb02ded/qtquicktimeline-b1b4b882dabaa036c3fb73c4a879ba8efbb02ded.tar.bz2 -> qtquicktimeline-b1b4b882dabaa036c3fb73c4a879ba8efbb02ded.tar.bz2"

KEYWORDS="*"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"