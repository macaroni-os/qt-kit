# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="56faf7249c3857f80f6483c5070e7408c2d53961"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/56faf7249c3857f80f6483c5070e7408c2d53961/qtbase-56faf7249c3857f80f6483c5070e7408c2d53961.tar.bz2 -> qtbase-56faf7249c3857f80f6483c5070e7408c2d53961.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)