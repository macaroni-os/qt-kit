# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="411b90bfe5a0c57f526b93f2c01cf089e70266ad"

QT5_MODULE="qtbase"
VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Unit testing library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/411b90bfe5a0c57f526b93f2c01cf089e70266ad/qtbase-411b90bfe5a0c57f526b93f2c01cf089e70266ad.tar.bz2 -> qtbase-411b90bfe5a0c57f526b93f2c01cf089e70266ad.tar.bz2"

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