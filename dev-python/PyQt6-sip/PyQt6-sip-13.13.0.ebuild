# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt6"
HOMEPAGE="https://github.com/Python-SIP/sip"
SRC_URI="https://files.pythonhosted.org/packages/78/35/bed43ff7cf040ced6b62a17b272abecb94914755284b54e8d06844e1ed23/pyqt6_sip-13.13.0.tar.gz -> pyqt6_sip-13.13.0.tar.gz
"
LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/pyqt6_sip-13.13.0"
