# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The PyQt build system"
HOMEPAGE="https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/61/f6/f3b504b4d55a7c4d3393cb90378501f1f5fc7f233bd85c0375674f84d2af/pyqt_builder-1.19.1.tar.gz -> pyqt_builder-1.19.1.tar.gz
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
S="${WORKDIR}/PyQt-builder-1.19.1"

post_src_unpack() {
	mv pyqt_builder-* "${S}"
}

src_prepare() {
	sed -i -e 's/license =.*/license = { text = "BSD" }/' \
		-e '/^license-files.*/d' \
		pyproject.toml || die
	distutils-r1_src_prepare
}

