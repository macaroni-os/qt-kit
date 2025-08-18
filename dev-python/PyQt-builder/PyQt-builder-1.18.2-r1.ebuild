# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The PyQt build system"
HOMEPAGE="https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/18/cf/9927e22ece4b20e24fb236dba358dd14f55b9e07fcde3a5ad6711da9792e/pyqt_builder-1.18.2.tar.gz -> pyqt_builder-1.18.2.tar.gz
"
DEPEND="
	<dev-python/sip-7[${PYTHON_USEDEP}]
	>=dev-python/sip-6.7[${PYTHON_USEDEP}]
"
RDEPEND="

	<dev-python/sip-7[${PYTHON_USEDEP}]
	>=dev-python/sip-6.7[${PYTHON_USEDEP}]
"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/PyQt-builder-1.18.2"

post_src_unpack() {
	mv pyqt_builder-* "${S}"
}

src_prepare() {
	sed -i -e 's/license =.*/license = { text = "BSD" }/' \
		-e '/^license-files.*/d' \
		pyproject.toml || die
	distutils-r1_src_prepare
}

