# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="d3b21bc8b70eaa1af848371dc1d34c4617c1f73c"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/d3b21bc8b70eaa1af848371dc1d34c4617c1f73c/qtbase-d3b21bc8b70eaa1af848371dc1d34c4617c1f73c.tar.bz2 -> qtbase-d3b21bc8b70eaa1af848371dc1d34c4617c1f73c.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)