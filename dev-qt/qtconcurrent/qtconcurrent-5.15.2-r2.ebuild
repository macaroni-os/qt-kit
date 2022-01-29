# Distributed under the terms of the GNU General Public License v2

EAPI=7
QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
KEYWORDS="*"

IUSE=""

DEPEND="
	>=dev-qt/qtcore-5.15.2-r3:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)
