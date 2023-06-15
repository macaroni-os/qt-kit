# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="a0f23c6a1f11bd7c6a8e4fd34f10bdb0a35789fa"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/a0f23c6a1f11bd7c6a8e4fd34f10bdb0a35789fa/qtnetworkauth-a0f23c6a1f11bd7c6a8e4fd34f10bdb0a35789fa.tar.bz2 -> qtnetworkauth-a0f23c6a1f11bd7c6a8e4fd34f10bdb0a35789fa.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"