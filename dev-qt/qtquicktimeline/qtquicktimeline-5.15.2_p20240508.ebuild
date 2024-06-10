# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="bf6c73064c82b07fcb1f7e72c263b249e137e224"

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"
SRC_URI="https://invent.kde.org/qt/qt/qtquicktimeline/-/archive/bf6c73064c82b07fcb1f7e72c263b249e137e224/qtquicktimeline-bf6c73064c82b07fcb1f7e72c263b249e137e224.tar.bz2 -> qtquicktimeline-bf6c73064c82b07fcb1f7e72c263b249e137e224.tar.bz2"

KEYWORDS="*"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"