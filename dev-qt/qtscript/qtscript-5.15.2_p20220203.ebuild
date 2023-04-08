# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="4f8c35a528586541ea55bb8b3361eaa6749e52b1"

inherit qt5-build

DESCRIPTION="Application scripting library for the Qt5 framework (deprecated)"
SRC_URI="https://invent.kde.org/qt/qt/qtscript/-/archive/4f8c35a528586541ea55bb8b3361eaa6749e52b1/qtscript-4f8c35a528586541ea55bb8b3361eaa6749e52b1.tar.bz2 -> qtscript-4f8c35a528586541ea55bb8b3361eaa6749e52b1.tar.bz2"

KEYWORDS="*"

IUSE="+jit scripttools"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	scripttools? (
		=dev-qt/qtgui-5.15.2*
		=dev-qt/qtwidgets-5.15.2*
	)
"
RDEPEND="${DEPEND}"

src_prepare() {
	qt_use_disable_mod scripttools widgets \
		src/src.pro

	qt5-build_src_prepare
}

src_configure() {
	local myqmakeargs=(
		JAVASCRIPTCORE_JIT=$(usex jit)
	)
	qt5-build_src_configure
}