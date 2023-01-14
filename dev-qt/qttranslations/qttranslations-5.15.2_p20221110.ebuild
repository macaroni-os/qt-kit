# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="af8cd030fed6a47cc1e8727e7ee5445e037bf712"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/af8cd030fed6a47cc1e8727e7ee5445e037bf712/qttranslations-af8cd030fed6a47cc1e8727e7ee5445e037bf712.tar.bz2 -> qttranslations-af8cd030fed6a47cc1e8727e7ee5445e037bf712.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"