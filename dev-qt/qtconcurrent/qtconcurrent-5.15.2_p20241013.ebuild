# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="068ba3d344af64de304a8a0506a038718ddf59d8"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/068ba3d344af64de304a8a0506a038718ddf59d8/qtbase-068ba3d344af64de304a8a0506a038718ddf59d8.tar.bz2 -> qtbase-068ba3d344af64de304a8a0506a038718ddf59d8.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)