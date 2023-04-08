# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="2b802231af3eb21c3c781753aba804217f855e86"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/2b802231af3eb21c3c781753aba804217f855e86/qttranslations-2b802231af3eb21c3c781753aba804217f855e86.tar.bz2 -> qttranslations-2b802231af3eb21c3c781753aba804217f855e86.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"