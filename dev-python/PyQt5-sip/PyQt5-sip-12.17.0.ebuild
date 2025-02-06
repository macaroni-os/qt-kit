# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt5"
HOMEPAGE="https://github.com/Python-SIP/sip https://pypi.org/project/PyQt5-sip/"
SRC_URI="https://files.pythonhosted.org/packages/01/79/086b50414bafa71df494398ad277d72e58229a3d1c1b1c766d12b14c2e6d/pyqt5_sip-12.17.0.tar.gz -> pyqt5_sip-12.17.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/PyQt5_sip-12.17.0"