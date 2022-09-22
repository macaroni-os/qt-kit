# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="502612c72a2cd3b3b0c4cff926e7764d74106d33"

inherit qt5-build

DESCRIPTION="3D data visualization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtdatavis3d/-/archive/502612c72a2cd3b3b0c4cff926e7764d74106d33/qtdatavis3d-502612c72a2cd3b3b0c4cff926e7764d74106d33.tar.bz2 -> qtdatavis3d-502612c72a2cd3b3b0c4cff926e7764d74106d33.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE="gles2-only qml"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*[gles2-only=]
	qml? ( =dev-qt/qtdeclarative-5.15.2*[gles2-only=] )
"
RDEPEND="${DEPEND}"

src_prepare() {
	# eliminate bogus dependency on qtwidgets
	sed -i -e '/requires.*widgets/d' qtdatavis3d.pro || die

	qt_use_disable_mod qml quick \
		src/src.pro

	qt5-build_src_prepare
}