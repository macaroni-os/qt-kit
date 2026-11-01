# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The PyQt build system"
HOMEPAGE="https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/0a/19/d3dd62568bc69cd4b854f6a8607d3081aebe3b0c915230c3c11c9676930e/pyqt_builder-1.20.3.tar.gz -> pyqt_builder-1.20.3.tar.gz
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
S="${WORKDIR}/PyQt-builder-1.20.3"

post_src_unpack() {
	mv pyqt_builder-* "${S}"
}

src_prepare() {
	sed -i -e 's/license =.*/license = { text = "BSD" }/' \
		-e '/^license-files.*/d' \
		pyproject.toml || die
	distutils-r1_src_prepare
}

