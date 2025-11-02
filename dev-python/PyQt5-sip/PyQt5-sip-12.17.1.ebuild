# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt5"
HOMEPAGE="https://github.com/Python-SIP/sip"
SRC_URI="https://files.pythonhosted.org/packages/ea/08/88a20c862f40b5c178c517cdc7e93767967dec5ac1b994e226d517991c9b/pyqt5_sip-12.17.1.tar.gz -> pyqt5_sip-12.17.1.tar.gz
"
SLOT="0"
LICENSE="BSD-2-Clause"
KEYWORDS="*"
S="${WORKDIR}/pyqt5_sip-12.17.1"
