# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="df809fd0b505b61d718fe1dc7fe19a79f9336cd9"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/df809fd0b505b61d718fe1dc7fe19a79f9336cd9/qtbase-df809fd0b505b61d718fe1dc7fe19a79f9336cd9.tar.bz2 -> qtbase-df809fd0b505b61d718fe1dc7fe19a79f9336cd9.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)