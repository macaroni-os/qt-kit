# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="9cf586d629a04040c9414c4f9e17abbc65c644eb"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/9cf586d629a04040c9414c4f9e17abbc65c644eb/qtbase-9cf586d629a04040c9414c4f9e17abbc65c644eb.tar.bz2 -> qtbase-9cf586d629a04040c9414c4f9e17abbc65c644eb.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)