# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e02ce0dfa692913bd5dcc50917f7e21f5a41cd2b"

QT5_MODULE="qttools"
inherit qt5-build

DESCRIPTION="Command line client to QStandardPaths"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/e02ce0dfa692913bd5dcc50917f7e21f5a41cd2b/qttools-e02ce0dfa692913bd5dcc50917f7e21f5a41cd2b.tar.bz2 -> qttools-e02ce0dfa692913bd5dcc50917f7e21f5a41cd2b.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/qtpaths
)