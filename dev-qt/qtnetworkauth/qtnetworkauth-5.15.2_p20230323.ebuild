# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="59311ee7d78a8b19d3dbe61cf49d42c5bd7c934a"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/59311ee7d78a8b19d3dbe61cf49d42c5bd7c934a/qtnetworkauth-59311ee7d78a8b19d3dbe61cf49d42c5bd7c934a.tar.bz2 -> qtnetworkauth-59311ee7d78a8b19d3dbe61cf49d42c5bd7c934a.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"