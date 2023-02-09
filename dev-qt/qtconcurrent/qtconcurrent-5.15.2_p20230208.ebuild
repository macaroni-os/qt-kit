# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="ec1c9c116a16f2cd15587dc861e5d178010b3f99"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/ec1c9c116a16f2cd15587dc861e5d178010b3f99/qtbase-ec1c9c116a16f2cd15587dc861e5d178010b3f99.tar.bz2 -> qtbase-ec1c9c116a16f2cd15587dc861e5d178010b3f99.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)