# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="af58a4c62415fbfd997c43422acf93e2e6ab5155"

inherit qt5-build

DESCRIPTION="Serial port abstraction library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtserialport/-/archive/af58a4c62415fbfd997c43422acf93e2e6ab5155/qtserialport-af58a4c62415fbfd997c43422acf93e2e6ab5155.tar.bz2 -> qtserialport-af58a4c62415fbfd997c43422acf93e2e6ab5155.tar.bz2"

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