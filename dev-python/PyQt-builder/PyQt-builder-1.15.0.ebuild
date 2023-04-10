# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://www.riverbankcomputing.com/software/pyqt-builder/ https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/ee/37/06bc9491c7f84ca776658106a59d3064b1c4c7533a35d547e85fc1e8087f/PyQt-builder-1.15.0.tar.gz -> PyQt-builder-1.15.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/PyQt-builder-1.15.0"