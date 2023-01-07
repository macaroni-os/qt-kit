# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="090e526e713d01eac34c64e4a09ad961c612febf"

QT5_MODULE="qttools"
inherit qt5-build

DESCRIPTION="Qt5 plugin metadata dumper"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/090e526e713d01eac34c64e4a09ad961c612febf/qttools-090e526e713d01eac34c64e4a09ad961c612febf.tar.bz2 -> qttools-090e526e713d01eac34c64e4a09ad961c612febf.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/qtplugininfo
)