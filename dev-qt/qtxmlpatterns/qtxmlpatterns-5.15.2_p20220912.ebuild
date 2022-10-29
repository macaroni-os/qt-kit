# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="b798a0f0265538a9dd12b5c7e4dad84ba8e1db4e"

inherit qt5-build

DESCRIPTION="XPath, XQuery, XSLT, and XML Schema validation library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtxmlpatterns/-/archive/b798a0f0265538a9dd12b5c7e4dad84ba8e1db4e/qtxmlpatterns-b798a0f0265538a9dd12b5c7e4dad84ba8e1db4e.tar.bz2 -> qtxmlpatterns-b798a0f0265538a9dd12b5c7e4dad84ba8e1db4e.tar.bz2"

KEYWORDS="*"

IUSE="qml"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
"
RDEPEND="${DEPEND}"

src_prepare() {
	qt_use_disable_mod qml qml \
		src/src.pro \
		src/imports/imports.pro

	qt_use_disable_mod qml quick tests/auto/auto.pro

	qt5-build_src_prepare
}