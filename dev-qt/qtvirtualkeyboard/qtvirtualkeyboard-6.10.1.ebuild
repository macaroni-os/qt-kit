# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
inherit qt6-build

DESCRIPTION="Customizable input framework and virtual keyboard for Qt"
HOMEPAGE="https://invent.kde.org/qt/qt/"
SRC_URI="https://download.qt.io/archive/qt/6.10/6.10.1/submodules/qtvirtualkeyboard-everywhere-src-6.10.1.tar.xz -> qtvirtualkeyboard-everywhere-src-6.10.1.tar.xz"
SLOT="6"
KEYWORDS="*"
IUSE="+sound +spell"
RDEPEND="dev-qt/qtbase:6[gui]
	dev-qt/qtdeclarative:6
	dev-qt/qtsvg:6
	sound? ( dev-qt/qtmultimedia:6[qml] )
	spell? ( app-text/hunspell:= )
	
"
DEPEND="${RDEPEND}
"
src_configure() {
	local mycmakeargs=(
	  $(cmake_use_find_package sound Qt6Multimedia)
	  $(qt_feature spell hunspell)
	  -DINPUT_vkb_handwriting=no # neither cerence nor myscript are packaged
	)
	qt6-build_src_configure
}


# vim: filetype=ebuild
