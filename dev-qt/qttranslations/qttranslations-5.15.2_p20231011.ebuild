# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="f7745c117041e7adf9705e1de8d71086c160dd9f"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/f7745c117041e7adf9705e1de8d71086c160dd9f/qttranslations-f7745c117041e7adf9705e1de8d71086c160dd9f.tar.bz2 -> qttranslations-f7745c117041e7adf9705e1de8d71086c160dd9f.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"