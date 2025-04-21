# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qt6-build

DESCRIPTION="Network authorization library for the Qt framework"
SRC_URI="https://download.qt.io/archive/qt/6.8/6.8.3/submodules/qtnetworkauth-everywhere-src-6.8.3.tar.xz -> qtnetworkauth-everywhere-src-6.8.3.tar.xz"
SLOT=6

LICENSE="GPL-3"

KEYWORDS="*"
IUSE=""

DEPEND="
	~dev-qt/qtbase-${PV}:6[gui]
"
RDEPEND="${DEPEND}"
