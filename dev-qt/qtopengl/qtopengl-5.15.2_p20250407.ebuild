# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="75279b03791c65953b0f5a921cf4b539298ad445"

QT5_MODULE="qtbase"
VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="OpenGL support library for the Qt5 framework (deprecated)"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/75279b03791c65953b0f5a921cf4b539298ad445/qtbase-75279b03791c65953b0f5a921cf4b539298ad445.tar.bz2 -> qtbase-75279b03791c65953b0f5a921cf4b539298ad445.tar.bz2"

KEYWORDS="*"

IUSE="gles2-only"

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtgui-5.15.2*[gles2-only=]
	=dev-qt/qtwidgets-5.15.2*[gles2-only=]
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/opengl
)

src_configure() {
	local myconf=(
		-opengl $(usex gles2-only es2 desktop)
	)
	qt5-build_src_configure
}