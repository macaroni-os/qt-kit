# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e2851096dc6f6a7cfa635d69ea950b382e3658ab"

inherit qt5-build

DESCRIPTION="Serial port abstraction library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtserialport/-/archive/e2851096dc6f6a7cfa635d69ea950b382e3658ab/qtserialport-e2851096dc6f6a7cfa635d69ea950b382e3658ab.tar.bz2 -> qtserialport-e2851096dc6f6a7cfa635d69ea950b382e3658ab.tar.bz2"

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