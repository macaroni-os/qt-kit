# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="d5051c0d7a374c3a542f7d12cdbd6b3c66c7f19c"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Set of components for creating classic desktop-style UIs for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/d5051c0d7a374c3a542f7d12cdbd6b3c66c7f19c/qtbase-d5051c0d7a374c3a542f7d12cdbd6b3c66c7f19c.tar.bz2 -> qtbase-d5051c0d7a374c3a542f7d12cdbd6b3c66c7f19c.tar.bz2"

KEYWORDS="*"

# keep IUSE defaults in sync with qtgui
IUSE="dbus gles2-only gtk +png +X"

REQUIRED_USE="gtk? ( dbus )"

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtgui-5.15.2*:5=[gles2-only=,png=,X?]
	dbus? ( =dev-qt/qtdbus-5.15.2* )
	gtk? (
		dev-libs/glib:2
		=dev-qt/qtgui-5.15.2*:5=[dbus]
		x11-libs/gtk+:3
		x11-libs/libX11
		x11-libs/pango
	)
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/tools/uic
	src/widgets
	src/plugins/platformthemes
)

QT5_GENTOO_CONFIG=(
	dbus:xdgdesktopportal:
	gtk:gtk3:
	::widgets
	!:no-widgets:
)

QT5_GENTOO_PRIVATE_CONFIG=(
	:widgets
)

src_configure() {
	local myconf=(
		-opengl $(usex gles2-only es2 desktop)
		$(qt_use dbus)
		$(qt_use gtk)
		-gui
		$(qt_use png libpng system)
		-widgets
		$(qt_use X xcb)
		$(usex X '-xcb-xlib -xkbcommon' '')
	)
	qt5-build_src_configure
}