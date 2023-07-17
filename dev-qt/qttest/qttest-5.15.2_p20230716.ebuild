# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="429a2c71afbcc74d4c9ae5c35481a118cb868851"

QT5_MODULE="qtbase"
VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Unit testing library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/429a2c71afbcc74d4c9ae5c35481a118cb868851/qtbase-429a2c71afbcc74d4c9ae5c35481a118cb868851.tar.bz2 -> qtbase-429a2c71afbcc74d4c9ae5c35481a118cb868851.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
DEPEND="${RDEPEND}
	test? (
		=dev-qt/qtgui-5.15.2*
		=dev-qt/qtxml-5.15.2*
	)
"

QT5_TARGET_SUBDIRS=(
	src/testlib
)

QT5_GENTOO_PRIVATE_CONFIG=(
	:testlib
)