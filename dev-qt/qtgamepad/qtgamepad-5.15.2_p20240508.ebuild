# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="b1c2f272f69e222a532485e6f820776c220b3535"

inherit qt5-build

DESCRIPTION="Qt module to support gamepad hardware"
SRC_URI="https://invent.kde.org/qt/qt/qtgamepad/-/archive/b1c2f272f69e222a532485e6f820776c220b3535/qtgamepad-b1c2f272f69e222a532485e6f820776c220b3535.tar.bz2 -> qtgamepad-b1c2f272f69e222a532485e6f820776c220b3535.tar.bz2"

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