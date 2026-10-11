# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt5"
HOMEPAGE="https://github.com/Python-SIP/sip"
SRC_URI="https://files.pythonhosted.org/packages/cd/ab/835df8e6fb06a618a4b8664765c5598e933c8113e90448e294549c9447f7/pyqt5_sip-12.20.0.tar.gz -> pyqt5_sip-12.20.0.tar.gz
"
LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/pyqt5_sip-12.20.0"
