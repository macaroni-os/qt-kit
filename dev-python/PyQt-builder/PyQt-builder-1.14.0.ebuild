# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://www.riverbankcomputing.com/software/pyqt-builder/ https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/3e/ed/fa5ffe4a72903747cdd5860a46483795edc0b70562015dde42724e9ce00f/PyQt-builder-1.14.0.tar.gz -> PyQt-builder-1.14.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/PyQt-builder-1.14.0"