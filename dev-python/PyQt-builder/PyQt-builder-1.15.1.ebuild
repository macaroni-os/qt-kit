# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The PEP 517 compliant PyQt build system"
HOMEPAGE="https://www.riverbankcomputing.com/software/pyqt-builder/ https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/31/d7/dbcb710a205014ca8f1c651ed77e6f1b1d0c67ab43c664afb079d6efb658/PyQt-builder-1.15.1.tar.gz -> PyQt-builder-1.15.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/PyQt-builder-1.15.1"