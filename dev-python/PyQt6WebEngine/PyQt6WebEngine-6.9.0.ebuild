# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="sip"
inherit python-r1 qmake-utils

DESCRIPTION="Python bindings for the Qt WebEngine framework"
HOMEPAGE="https://www.riverbankcomputing.com/software/pyqtwebengine/ https://pypi.org/project/PyQt6-WebEngine/"
SRC_URI="https://files.pythonhosted.org/packages/8f/1a/9971af004a7e859347702f816fb71ecd67c3e32b2f0ae8daf1c1ded99f62/pyqt6_webengine-6.9.0.tar.gz -> pyqt6_webengine-6.9.0.tar.gz
"
CDEPEND="

	${PYTHON_DEPS}
	dev-python/PyQt6[webchannel,${PYTHON_USEDEP}]
	dev-qt/qtbase:6
	dev-qt/qtwebengine:6
"
DEPEND="${CDEPEND}
"
RDEPEND="
	${CDEPEND}
"
BDEPEND="
	dev-python/PyQt-builder[${PYTHON_USEDEP}]
	dev-python/sip[${PYTHON_USEDEP}]
"

IUSE="debug"
REQUIRED_USE="${PYTHON_REQUIRED_USE}
"
SLOT="0"
LICENSE="GPL-3"
KEYWORDS="*"
S="${WORKDIR}/pyqt6_webengine-6.9.0"

src_configure() {
		DISTUTILS_ARGS=(
						--qmake="$(qt6_get_bindir)"/qmake
						--qmake-setting="$(qt6_get_qmake_args)"
						--verbose
						--enable=QtWebEngineCore
						$(usev debug '--debug --qml-debug --tracing')
				)
}

