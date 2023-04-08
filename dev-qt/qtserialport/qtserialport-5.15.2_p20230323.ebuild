# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="7fb308ec721f034a0d673784d951577d764a8e67"

inherit qt5-build

DESCRIPTION="Serial port abstraction library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtserialport/-/archive/7fb308ec721f034a0d673784d951577d764a8e67/qtserialport-7fb308ec721f034a0d673784d951577d764a8e67.tar.bz2 -> qtserialport-7fb308ec721f034a0d673784d951577d764a8e67.tar.bz2"

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