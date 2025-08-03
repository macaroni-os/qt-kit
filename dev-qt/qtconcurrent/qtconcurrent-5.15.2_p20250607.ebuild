# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="c5b9db065ca5682b0bee339197c847da8b2710c1"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/c5b9db065ca5682b0bee339197c847da8b2710c1/qtbase-c5b9db065ca5682b0bee339197c847da8b2710c1.tar.bz2 -> qtbase-c5b9db065ca5682b0bee339197c847da8b2710c1.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)