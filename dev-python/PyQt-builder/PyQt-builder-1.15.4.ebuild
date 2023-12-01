# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The PEP 517 compliant PyQt build system"
HOMEPAGE="https://www.riverbankcomputing.com/software/pyqt-builder/ https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/c0/75/a3384eea8770c17e77821368618a5140c4ae0c37f9c05a84ef55f4807172/PyQt-builder-1.15.4.tar.gz -> PyQt-builder-1.15.4.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/PyQt-builder-1.15.4"