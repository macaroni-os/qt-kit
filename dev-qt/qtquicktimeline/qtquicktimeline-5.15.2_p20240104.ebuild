# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="29394e35db43acb20e7b4d5e978a733f5b4232a6"

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"
SRC_URI="https://invent.kde.org/qt/qt/qtquicktimeline/-/archive/29394e35db43acb20e7b4d5e978a733f5b4232a6/qtquicktimeline-29394e35db43acb20e7b4d5e978a733f5b4232a6.tar.bz2 -> qtquicktimeline-29394e35db43acb20e7b4d5e978a733f5b4232a6.tar.bz2"

KEYWORDS="*"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"