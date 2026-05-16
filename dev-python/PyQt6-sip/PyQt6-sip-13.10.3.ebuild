# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt6"
HOMEPAGE="https://github.com/Python-SIP/sip"
SRC_URI="https://files.pythonhosted.org/packages/0d/e9/d1b97154cec1d6c8a3d93fb6565d1463bc528fa5103491d626d07a451c7c/pyqt6_sip-13.10.3.tar.gz -> pyqt6_sip-13.10.3.tar.gz
"
SLOT="0"
LICENSE="BSD-2-Clause"
KEYWORDS="*"
S="${WORKDIR}/pyqt6_sip-13.10.3"
