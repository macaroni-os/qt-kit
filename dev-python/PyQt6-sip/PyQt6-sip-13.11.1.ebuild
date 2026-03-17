# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt6"
HOMEPAGE="https://github.com/Python-SIP/sip"
SRC_URI="https://files.pythonhosted.org/packages/90/24/a753e1af94b9ae5b2da63d4598457308da3cdbf0838c959381db086ccc86/pyqt6_sip-13.11.1.tar.gz -> pyqt6_sip-13.11.1.tar.gz
"
SLOT="0"
LICENSE="BSD-2-Clause"
KEYWORDS="*"
S="${WORKDIR}/pyqt6_sip-13.11.1"
