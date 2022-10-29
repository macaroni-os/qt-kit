# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e2438e010a98d731317c10a64c095e0282b51ab0"

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"
SRC_URI="https://invent.kde.org/qt/qt/qtquicktimeline/-/archive/e2438e010a98d731317c10a64c095e0282b51ab0/qtquicktimeline-e2438e010a98d731317c10a64c095e0282b51ab0.tar.bz2 -> qtquicktimeline-e2438e010a98d731317c10a64c095e0282b51ab0.tar.bz2"

KEYWORDS="*"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"