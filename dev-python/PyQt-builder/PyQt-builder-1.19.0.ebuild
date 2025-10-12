# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The PyQt build system"
HOMEPAGE="https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/f7/25/e8ad047efd873e07139f703b681017fa0c3326540cc4f42b02e1a237a3b0/pyqt_builder-1.19.0.tar.gz -> pyqt_builder-1.19.0.tar.gz
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
S="${WORKDIR}/PyQt-builder-1.19.0"

post_src_unpack() {
	mv pyqt_builder-* "${S}"
}

src_prepare() {
	sed -i -e 's/license =.*/license = { text = "BSD" }/' \
		-e '/^license-files.*/d' \
		pyproject.toml || die
	distutils-r1_src_prepare
}

