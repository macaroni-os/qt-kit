# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="34c19c6441cd440dc65b59ae7670eadf099d51f8"

inherit qt5-build

DESCRIPTION="Serial port abstraction library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtserialport/-/archive/34c19c6441cd440dc65b59ae7670eadf099d51f8/qtserialport-34c19c6441cd440dc65b59ae7670eadf099d51f8.tar.bz2 -> qtserialport-34c19c6441cd440dc65b59ae7670eadf099d51f8.tar.bz2"

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