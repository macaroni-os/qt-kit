# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://www.riverbankcomputing.com/software/pyqt-builder/ https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/21/6c/685981114cb350f2f8e4a0827aa7f60f142e15816aa48f3204e5a1e2578c/PyQt-builder-1.14.1.tar.gz -> PyQt-builder-1.14.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/PyQt-builder-1.14.1"