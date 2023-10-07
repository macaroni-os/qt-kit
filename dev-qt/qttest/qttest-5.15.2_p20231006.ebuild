# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="b6867eef3dd3ac7e825e22b4ad4d2fc182cf20ff"

QT5_MODULE="qtbase"
VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Unit testing library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/b6867eef3dd3ac7e825e22b4ad4d2fc182cf20ff/qtbase-b6867eef3dd3ac7e825e22b4ad4d2fc182cf20ff.tar.bz2 -> qtbase-b6867eef3dd3ac7e825e22b4ad4d2fc182cf20ff.tar.bz2"

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