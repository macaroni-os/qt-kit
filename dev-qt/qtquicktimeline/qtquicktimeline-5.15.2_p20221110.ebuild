# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="4cd0142a30bfa5eef47c720ac24dd73e12764806"

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"
SRC_URI="https://invent.kde.org/qt/qt/qtquicktimeline/-/archive/4cd0142a30bfa5eef47c720ac24dd73e12764806/qtquicktimeline-4cd0142a30bfa5eef47c720ac24dd73e12764806.tar.bz2 -> qtquicktimeline-4cd0142a30bfa5eef47c720ac24dd73e12764806.tar.bz2"

KEYWORDS="*"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"