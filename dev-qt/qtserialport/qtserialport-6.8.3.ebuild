# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qt6-build

DESCRIPTION="Qt Serial Port provides basic functionality for configuration, I/O operations, and getting and setting the control signals of the RS-232 pinouts"
SRC_URI="https://download.qt.io/archive/qt/6.8/6.8.3/submodules/qtserialport-everywhere-src-6.8.3.tar.xz -> qtserialport-everywhere-src-6.8.3.tar.xz"
SLOT=6

KEYWORDS="*"
IUSE=""

DEPEND="
	~dev-qt/qtbase-${PV}:6
	virtual/libudev:=
"
RDEPEND="${DEPEND}"
