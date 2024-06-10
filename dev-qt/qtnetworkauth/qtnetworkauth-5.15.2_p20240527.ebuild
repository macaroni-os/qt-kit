# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="28180f28c98e329676463e24cef0097cba45bc00"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/28180f28c98e329676463e24cef0097cba45bc00/qtnetworkauth-28180f28c98e329676463e24cef0097cba45bc00.tar.bz2 -> qtnetworkauth-28180f28c98e329676463e24cef0097cba45bc00.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"