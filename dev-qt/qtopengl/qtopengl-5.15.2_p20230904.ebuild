# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="4bb1699cf981beade4705416f1de9d9dd4ea8e99"

QT5_MODULE="qtbase"
VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="OpenGL support library for the Qt5 framework (deprecated)"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/4bb1699cf981beade4705416f1de9d9dd4ea8e99/qtbase-4bb1699cf981beade4705416f1de9d9dd4ea8e99.tar.bz2 -> qtbase-4bb1699cf981beade4705416f1de9d9dd4ea8e99.tar.bz2"

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