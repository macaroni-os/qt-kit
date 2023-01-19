# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e40c42e4910574fd8d1b16e92e438bbbd03cf2d4"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Implementation of SAX and DOM for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/e40c42e4910574fd8d1b16e92e438bbbd03cf2d4/qtbase-e40c42e4910574fd8d1b16e92e438bbbd03cf2d4.tar.bz2 -> qtbase-e40c42e4910574fd8d1b16e92e438bbbd03cf2d4.tar.bz2"

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