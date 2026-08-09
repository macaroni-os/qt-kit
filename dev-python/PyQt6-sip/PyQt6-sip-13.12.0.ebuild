# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt6"
HOMEPAGE="https://github.com/Python-SIP/sip"
SRC_URI="https://files.pythonhosted.org/packages/d1/23/16c583dbb6b53e0494dfcf7d1a44778c82e324edda62326727b37f1a5b34/pyqt6_sip-13.12.0.tar.gz -> pyqt6_sip-13.12.0.tar.gz
"
SLOT="0"
LICENSE="BSD-2-Clause"
KEYWORDS="*"
S="${WORKDIR}/pyqt6_sip-13.12.0"
