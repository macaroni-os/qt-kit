# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt6"
HOMEPAGE="https://github.com/Python-SIP/sip"
SRC_URI="https://files.pythonhosted.org/packages/03/da/164fe6759acbd04c4523a9471c4d11f4b3c744182cb7bbd87faf249ce172/pyqt6_sip-13.13.1.tar.gz -> pyqt6_sip-13.13.1.tar.gz
"
LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/pyqt6_sip-13.13.1"
