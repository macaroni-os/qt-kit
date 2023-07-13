# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="ca5af7a385eab2df6f9f41864f48b4ab35df4951"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/ca5af7a385eab2df6f9f41864f48b4ab35df4951/qtbase-ca5af7a385eab2df6f9f41864f48b4ab35df4951.tar.bz2 -> qtbase-ca5af7a385eab2df6f9f41864f48b4ab35df4951.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)