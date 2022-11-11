# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="51258629f2cf37fff8406bf705d79c07fc7135ca"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/51258629f2cf37fff8406bf705d79c07fc7135ca/qtbase-51258629f2cf37fff8406bf705d79c07fc7135ca.tar.bz2 -> qtbase-51258629f2cf37fff8406bf705d79c07fc7135ca.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)