# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt5"
HOMEPAGE="https://github.com/Python-SIP/sip"
SRC_URI="https://files.pythonhosted.org/packages/1e/4a/195cf4d2a7e1ff480b4cabcd51aa5c0068c03a19a97282317536e4a82e1e/pyqt5_sip-12.17.2.tar.gz -> pyqt5_sip-12.17.2.tar.gz
"
SLOT="0"
LICENSE="BSD-2-Clause"
KEYWORDS="*"
S="${WORKDIR}/pyqt5_sip-12.17.2"
