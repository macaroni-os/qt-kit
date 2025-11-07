# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
inherit qt6-build

DESCRIPTION="Implementation of the Language Server Protocol for Qt"
HOMEPAGE="https://invent.kde.org/qt/qt/"
SRC_URI="https://download.qt.io/archive/qt/6.9/6.9.3/submodules/qtlanguageserver-everywhere-src-6.9.3.tar.xz -> qtlanguageserver-everywhere-src-6.9.3.tar.xz"
SLOT="6"
KEYWORDS="*"
RDEPEND="dev-qt/qtbase:6
	
"
DEPEND="${RDEPEND}
"

# vim: filetype=ebuild
