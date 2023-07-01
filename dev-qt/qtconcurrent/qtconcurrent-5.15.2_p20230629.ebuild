# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="05406c3f5f516d3148254c8294e8883c28a2c95a"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/05406c3f5f516d3148254c8294e8883c28a2c95a/qtbase-05406c3f5f516d3148254c8294e8883c28a2c95a.tar.bz2 -> qtbase-05406c3f5f516d3148254c8294e8883c28a2c95a.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)