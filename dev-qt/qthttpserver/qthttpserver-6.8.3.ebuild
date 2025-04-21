# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qt6-build

DESCRIPTION="QHttpServer allows to create a simple Http server by setting a range of request handlers"
SRC_URI="https://download.qt.io/archive/qt/6.8/6.8.3/submodules/qthttpserver-everywhere-src-6.8.3.tar.xz -> qthttpserver-everywhere-src-6.8.3.tar.xz"
SLOT=6

KEYWORDS="*"
IUSE=""

DEPEND="
	~dev-qt/qtbase-${PV}:6
	~dev-qt/qtwebsockets-${PV}:6
"
RDEPEND="${DEPEND}"
