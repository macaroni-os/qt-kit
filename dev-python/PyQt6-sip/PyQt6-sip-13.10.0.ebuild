# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt6"
HOMEPAGE="https://github.com/Python-SIP/sip"
SRC_URI="https://files.pythonhosted.org/packages/90/18/0405c54acba0c8e276dd6f0601890e6e735198218d031a6646104870fe22/pyqt6_sip-13.10.0.tar.gz -> pyqt6_sip-13.10.0.tar.gz
"

IUSE=""
SLOT="0"
LICENSE="BSD-2-Clause"
KEYWORDS="*"
S="${WORKDIR}/pyqt6_sip-13.10.0"
