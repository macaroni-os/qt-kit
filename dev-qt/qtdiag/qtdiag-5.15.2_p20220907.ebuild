# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="32912a06aadfc3dcbc34e0a668ce2c78351eee6e"

QT5_MODULE="qttools"
inherit qt5-build

DESCRIPTION="Tool for reporting diagnostic information about Qt and its environment"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/32912a06aadfc3dcbc34e0a668ce2c78351eee6e/qttools-32912a06aadfc3dcbc34e0a668ce2c78351eee6e.tar.bz2 -> qttools-32912a06aadfc3dcbc34e0a668ce2c78351eee6e.tar.bz2"

KEYWORDS="*"

IUSE="+network +widgets"

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtgui-5.15.2*:5=
	network? ( =dev-qt/qtnetwork-5.15.2*[ssl] )
	widgets? ( =dev-qt/qtwidgets-5.15.2* )
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/qtdiag
)

src_prepare() {
	qt_use_disable_mod network network \
		src/qtdiag/qtdiag.pro

	qt_use_disable_mod widgets widgets \
		src/qtdiag/qtdiag.pro

	qt5-build_src_prepare
}