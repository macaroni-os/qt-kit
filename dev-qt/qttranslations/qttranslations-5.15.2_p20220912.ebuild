# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="c38edd3a5501bcd53132e1e4abb7d25a98e0e1a9"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/c38edd3a5501bcd53132e1e4abb7d25a98e0e1a9/qttranslations-c38edd3a5501bcd53132e1e4abb7d25a98e0e1a9.tar.bz2 -> qttranslations-c38edd3a5501bcd53132e1e4abb7d25a98e0e1a9.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"