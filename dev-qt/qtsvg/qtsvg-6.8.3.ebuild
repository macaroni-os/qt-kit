# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qt6-build

DESCRIPTION="Qt SVG is a Qt module that allows you to use Scalable Vector Graphics (SVG) in your applications"
SRC_URI="https://download.qt.io/archive/qt/6.8/6.8.3/submodules/qtsvg-everywhere-src-6.8.3.tar.xz -> qtsvg-everywhere-src-6.8.3.tar.xz"
SLOT=6

KEYWORDS="*"
IUSE=""

RDEPEND="
	~dev-qt/qtbase-${PV}:6[gui]
	sys-libs/zlib:=
"
DEPEND="${RDEPEND}"
