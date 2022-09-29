# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="4abf3579e1d3834600da81b103d403df575b1b4f"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/4abf3579e1d3834600da81b103d403df575b1b4f/qtbase-4abf3579e1d3834600da81b103d403df575b1b4f.tar.bz2 -> qtbase-4abf3579e1d3834600da81b103d403df575b1b4f.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)