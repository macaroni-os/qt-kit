# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e8d9e68d25f4bf305f8b3ca5d678594ee4681baa"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Implementation of SAX and DOM for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/e8d9e68d25f4bf305f8b3ca5d678594ee4681baa/qtbase-e8d9e68d25f4bf305f8b3ca5d678594ee4681baa.tar.bz2 -> qtbase-e8d9e68d25f4bf305f8b3ca5d678594ee4681baa.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
DEPEND="${RDEPEND}
	test? ( =dev-qt/qtnetwork-5.15.2* )
"

QT5_TARGET_SUBDIRS=(
	src/xml
)

QT5_GENTOO_PRIVATE_CONFIG=(
	:xml
)