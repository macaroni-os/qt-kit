# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="fd567a42c1b566f22f339db758d29925fd2a8c60"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/fd567a42c1b566f22f339db758d29925fd2a8c60/qttranslations-fd567a42c1b566f22f339db758d29925fd2a8c60.tar.bz2 -> qttranslations-fd567a42c1b566f22f339db758d29925fd2a8c60.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"