# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="d4db9d8a4893a70e7ba3a6d5fe62f24f9ce745ca"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/d4db9d8a4893a70e7ba3a6d5fe62f24f9ce745ca/qttranslations-d4db9d8a4893a70e7ba3a6d5fe62f24f9ce745ca.tar.bz2 -> qttranslations-d4db9d8a4893a70e7ba3a6d5fe62f24f9ce745ca.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"