# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="875994c48fc77480244cd3c10a5105dd94f073de"

QT5_MODULE="qttools"
inherit qt5-build

DESCRIPTION="Command line client to QStandardPaths"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/875994c48fc77480244cd3c10a5105dd94f073de/qttools-875994c48fc77480244cd3c10a5105dd94f073de.tar.bz2 -> qttools-875994c48fc77480244cd3c10a5105dd94f073de.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/qtpaths
)