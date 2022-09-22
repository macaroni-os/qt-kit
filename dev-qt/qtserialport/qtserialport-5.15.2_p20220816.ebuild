# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="c9abfcd5d88cb43c2a7c1d5ddecbff4cdd320694"

inherit qt5-build

DESCRIPTION="Serial port abstraction library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtserialport/-/archive/c9abfcd5d88cb43c2a7c1d5ddecbff4cdd320694/qtserialport-c9abfcd5d88cb43c2a7c1d5ddecbff4cdd320694.tar.bz2 -> qtserialport-c9abfcd5d88cb43c2a7c1d5ddecbff4cdd320694.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	virtual/libudev:=
"
RDEPEND="${DEPEND}"

src_prepare() {
	# make sure we link against libudev
	sed -i -e 's/:qtConfig(libudev)//' \
		src/serialport/serialport-lib.pri || die

	qt5-build_src_prepare
}