# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="f82ed367d1b80b69d738cfcde534b75854a45476"

QT5_MODULE="qttools"
inherit desktop qt5-build xdg-utils

DESCRIPTION="Graphical tool that lets you introspect D-Bus objects and messages"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/f82ed367d1b80b69d738cfcde534b75854a45476/qttools-f82ed367d1b80b69d738cfcde534b75854a45476.tar.bz2 -> qttools-f82ed367d1b80b69d738cfcde534b75854a45476.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdbus-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtwidgets-5.15.2*
	=dev-qt/qtxml-5.15.2*
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/qdbus/qdbusviewer
)

src_install() {
	qt5-build_src_install

	doicon -s 32 src/qdbus/qdbusviewer/images/qdbusviewer.png
	newicon -s 128 src/qdbus/qdbusviewer/images/qdbusviewer-128.png qdbusviewer.png
	make_desktop_entry "${QT5_BINDIR}"/qdbusviewer 'Qt 5 QDBusViewer' qdbusviewer 'Qt;Development'
}

pkg_postinst() {
	qt5-build_pkg_postinst
	xdg_icon_cache_update
}

pkg_postrm() {
	qt5-build_pkg_postrm
	xdg_icon_cache_update
}