# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="c601106c8b5d5495f951c8ea0ad6a9e171416ae0"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/c601106c8b5d5495f951c8ea0ad6a9e171416ae0/qttranslations-c601106c8b5d5495f951c8ea0ad6a9e171416ae0.tar.bz2 -> qttranslations-c601106c8b5d5495f951c8ea0ad6a9e171416ae0.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"