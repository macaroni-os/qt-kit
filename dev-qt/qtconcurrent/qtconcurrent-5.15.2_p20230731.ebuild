# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="495371f19b60f528cbf7a953d7bff5298887042a"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/495371f19b60f528cbf7a953d7bff5298887042a/qtbase-495371f19b60f528cbf7a953d7bff5298887042a.tar.bz2 -> qtbase-495371f19b60f528cbf7a953d7bff5298887042a.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)