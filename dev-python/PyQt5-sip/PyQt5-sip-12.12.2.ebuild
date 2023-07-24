# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt5"
HOMEPAGE="https://www.riverbankcomputing.com/software/sip/ https://pypi.org/project/PyQt5-sip/"
SRC_URI="https://files.pythonhosted.org/packages/99/61/6954ff8f8ab550a8fec56a2f29be362f281ee71b6edc7615b905adb0e6a9/PyQt5_sip-12.12.2.tar.gz -> PyQt5_sip-12.12.2.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/PyQt5_sip-12.12.2"