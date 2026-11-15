# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt5"
HOMEPAGE="https://github.com/Python-SIP/sip"
SRC_URI="https://files.pythonhosted.org/packages/e0/5d/778b6bb5d65c32e40ab8bd2b40e218108a31e323c5e8c026895da7833444/pyqt5_sip-12.20.1.tar.gz -> pyqt5_sip-12.20.1.tar.gz
"
LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/pyqt5_sip-12.20.1"
