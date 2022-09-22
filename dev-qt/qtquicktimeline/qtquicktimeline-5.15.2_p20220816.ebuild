# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="87ad61716a7cba5a070d8a7b1756c8b2b48d5d53"

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"
SRC_URI="https://invent.kde.org/qt/qt/qtquicktimeline/-/archive/87ad61716a7cba5a070d8a7b1756c8b2b48d5d53/qtquicktimeline-87ad61716a7cba5a070d8a7b1756c8b2b48d5d53.tar.bz2 -> qtquicktimeline-87ad61716a7cba5a070d8a7b1756c8b2b48d5d53.tar.bz2"

KEYWORDS="*"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"