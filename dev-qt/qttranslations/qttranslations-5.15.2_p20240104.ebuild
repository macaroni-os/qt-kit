# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="40aabebd04a30ccef374bf20a7bfaa1d8d665b7f"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/40aabebd04a30ccef374bf20a7bfaa1d8d665b7f/qttranslations-40aabebd04a30ccef374bf20a7bfaa1d8d665b7f.tar.bz2 -> qttranslations-40aabebd04a30ccef374bf20a7bfaa1d8d665b7f.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"