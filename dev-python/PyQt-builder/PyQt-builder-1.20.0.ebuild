# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The PyQt build system"
HOMEPAGE="https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/42/90/0aed537919f08cc5bd96e0ad2dc280766f578785ce82a7fa0e6abd22ba17/pyqt_builder-1.20.0.tar.gz -> pyqt_builder-1.20.0.tar.gz
"
LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
RDEPEND="

	<dev-python/sip-7[${PYTHON_USEDEP}]
	>=dev-python/sip-6.7[${PYTHON_USEDEP}]
"
DEPEND="


	<dev-python/sip-7[${PYTHON_USEDEP}]
	>=dev-python/sip-6.7[${PYTHON_USEDEP}]
"
S="${WORKDIR}/PyQt-builder-1.20.0"

post_src_unpack() {
	mv pyqt_builder-* "${S}"
}

src_prepare() {
	sed -i -e 's/license =.*/license = { text = "BSD" }/' \
		-e '/^license-files.*/d' \
		pyproject.toml || die
	distutils-r1_src_prepare
}

