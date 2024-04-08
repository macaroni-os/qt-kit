# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="44255e2ae53a14e9a3fb671da0782ec5d396220a"

inherit qt5-build

DESCRIPTION="Qt module to support gamepad hardware"
SRC_URI="https://invent.kde.org/qt/qt/qtgamepad/-/archive/44255e2ae53a14e9a3fb671da0782ec5d396220a/qtgamepad-44255e2ae53a14e9a3fb671da0782ec5d396220a.tar.bz2 -> qtgamepad-44255e2ae53a14e9a3fb671da0782ec5d396220a.tar.bz2"

KEYWORDS="*"

IUSE="evdev qml sdl"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*[evdev?]
	evdev? ( virtual/libudev:= )
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
	sdl? ( media-libs/libsdl2 )
"
RDEPEND="${DEPEND}"

src_prepare() {
	qt_use_disable_mod qml quick \
		src/src.pro

	qt_use_disable_config evdev evdev \
		src/plugins/gamepads/gamepads.pro

	qt_use_disable_config sdl sdl2 \
		src/plugins/gamepads/gamepads.pro

	qt5-build_src_prepare
}