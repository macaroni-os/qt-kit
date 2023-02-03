# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="9853ce1045834f4f4b94a4745a473a1cda8c60fa"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/9853ce1045834f4f4b94a4745a473a1cda8c60fa/qtbase-9853ce1045834f4f4b94a4745a473a1cda8c60fa.tar.bz2 -> qtbase-9853ce1045834f4f4b94a4745a473a1cda8c60fa.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)