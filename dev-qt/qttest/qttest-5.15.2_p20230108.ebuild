# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="d5051c0d7a374c3a542f7d12cdbd6b3c66c7f19c"

QT5_MODULE="qtbase"
VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Unit testing library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/d5051c0d7a374c3a542f7d12cdbd6b3c66c7f19c/qtbase-d5051c0d7a374c3a542f7d12cdbd6b3c66c7f19c.tar.bz2 -> qtbase-d5051c0d7a374c3a542f7d12cdbd6b3c66c7f19c.tar.bz2"

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