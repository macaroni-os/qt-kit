# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="5649efd376ed7dbb171905e9edebbd547d1f73eb"

QT5_MODULE="qttools"
inherit qt5-build

DESCRIPTION="Tools for working with Qt translation data files"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/5649efd376ed7dbb171905e9edebbd547d1f73eb/qttools-5649efd376ed7dbb171905e9edebbd547d1f73eb.tar.bz2 -> qttools-5649efd376ed7dbb171905e9edebbd547d1f73eb.tar.bz2"

KEYWORDS="*"

IUSE="qml"

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtxml-5.15.2*
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/linguist
)

src_prepare() {
	sed -i -e '/SUBDIRS += linguist/d' \
		src/linguist/linguist.pro || die

	qt_use_disable_mod qml qmldevtools-private \
		src/linguist/lupdate/lupdate.pro

	qt5-build_src_prepare
}