# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="ed2291d454fac207f6b1555d30b9227e51be611b"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/ed2291d454fac207f6b1555d30b9227e51be611b/qtnetworkauth-ed2291d454fac207f6b1555d30b9227e51be611b.tar.bz2 -> qtnetworkauth-ed2291d454fac207f6b1555d30b9227e51be611b.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"