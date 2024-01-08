# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="58f4f22662023efe6f223d5ef4a6d0be3708182b"

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"
SRC_URI="https://invent.kde.org/qt/qt/qtquicktimeline/-/archive/58f4f22662023efe6f223d5ef4a6d0be3708182b/qtquicktimeline-58f4f22662023efe6f223d5ef4a6d0be3708182b.tar.bz2 -> qtquicktimeline-58f4f22662023efe6f223d5ef4a6d0be3708182b.tar.bz2"

KEYWORDS="*"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"