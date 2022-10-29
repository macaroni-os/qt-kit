# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="f34ac77b5955126be60faa2b801be2d19dff896f"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/f34ac77b5955126be60faa2b801be2d19dff896f/qtnetworkauth-f34ac77b5955126be60faa2b801be2d19dff896f.tar.bz2 -> qtnetworkauth-f34ac77b5955126be60faa2b801be2d19dff896f.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"