# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="56065158ffc4cd0fd78f9edf4b21b77b969f8dbb"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/56065158ffc4cd0fd78f9edf4b21b77b969f8dbb/qttranslations-56065158ffc4cd0fd78f9edf4b21b77b969f8dbb.tar.bz2 -> qttranslations-56065158ffc4cd0fd78f9edf4b21b77b969f8dbb.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"