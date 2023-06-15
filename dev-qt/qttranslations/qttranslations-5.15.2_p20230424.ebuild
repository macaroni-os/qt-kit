# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="a680686754d84b91d4cc4252a2fb8af0c58f5f49"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/a680686754d84b91d4cc4252a2fb8af0c58f5f49/qttranslations-a680686754d84b91d4cc4252a2fb8af0c58f5f49.tar.bz2 -> qttranslations-a680686754d84b91d4cc4252a2fb8af0c58f5f49.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"