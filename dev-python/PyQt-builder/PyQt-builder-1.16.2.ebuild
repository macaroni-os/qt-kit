# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The PyQt build system"
HOMEPAGE="None https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/57/09/11d09b4140932960a4e232e04858ceda19d821f8deb350605934f2251c87/pyqt_builder-1.16.2.tar.gz -> pyqt_builder-1.16.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/PyQt-builder-1.16.2"