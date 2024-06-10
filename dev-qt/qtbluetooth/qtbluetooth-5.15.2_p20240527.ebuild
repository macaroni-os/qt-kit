# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="99f30db37c63447c59d5fac15bc8feb832a7fd04"

QT5_MODULE="qtconnectivity"
inherit qt5-build

DESCRIPTION="Bluetooth support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtconnectivity/-/archive/99f30db37c63447c59d5fac15bc8feb832a7fd04/qtconnectivity-99f30db37c63447c59d5fac15bc8feb832a7fd04.tar.bz2 -> qtconnectivity-99f30db37c63447c59d5fac15bc8feb832a7fd04.tar.bz2"

KEYWORDS="*"

IUSE="qml"

RDEPEND="
	=dev-qt/qtconcurrent-5.15.2*
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtdbus-5.15.2*
	>=net-wireless/bluez-5:=
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
"
DEPEND="${RDEPEND}
	=dev-qt/qtnetwork-5.15.2*
"

src_prepare() {
	sed -i -e 's/nfc//' src/src.pro || die

	qt_use_disable_mod qml quick src/src.pro

	qt5-build_src_prepare
}