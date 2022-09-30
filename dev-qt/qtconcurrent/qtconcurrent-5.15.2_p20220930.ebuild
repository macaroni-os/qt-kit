# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e44097b63d17ba3178a637df7fac51ddc51cb48b"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/e44097b63d17ba3178a637df7fac51ddc51cb48b/qtbase-e44097b63d17ba3178a637df7fac51ddc51cb48b.tar.bz2 -> qtbase-e44097b63d17ba3178a637df7fac51ddc51cb48b.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)