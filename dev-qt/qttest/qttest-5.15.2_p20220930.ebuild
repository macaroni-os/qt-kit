# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e44097b63d17ba3178a637df7fac51ddc51cb48b"

QT5_MODULE="qtbase"
VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Unit testing library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/e44097b63d17ba3178a637df7fac51ddc51cb48b/qtbase-e44097b63d17ba3178a637df7fac51ddc51cb48b.tar.bz2 -> qtbase-e44097b63d17ba3178a637df7fac51ddc51cb48b.tar.bz2"

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