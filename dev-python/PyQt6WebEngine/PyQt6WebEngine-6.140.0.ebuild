# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="sip"
inherit python-r1 qmake-utils

DESCRIPTION="Python bindings for the Qt WebEngine framework"
HOMEPAGE="https://www.riverbankcomputing.com/software/pyqtwebengine/ https://pypi.org/project/PyQt6-WebEngine/"
SRC_URI="https://files.pythonhosted.org/packages/9e/4d/fcb9ee392b45ce63b4de1bc827900054f410a0ca44f27bb3eaffee2a23d2/pyqt6_webengine-6.140.0.tar.gz -> pyqt6_webengine-6.140.0.tar.gz
"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="*"
CDEPEND="

	${PYTHON_DEPS}
	dev-python/PyQt6[webchannel,${PYTHON_USEDEP}]
	dev-qt/qtbase:6
	dev-qt/qtwebengine:6
"
BDEPEND="
	dev-python/PyQt-builder[${PYTHON_USEDEP}]
	dev-python/sip[${PYTHON_USEDEP}]
"
RDEPEND="
	${CDEPEND}
"
DEPEND="
${CDEPEND}

"
IUSE="debug"
REQUIRED_USE="${PYTHON_REQUIRED_USE}
"
S="${WORKDIR}/pyqt6_webengine-6.140.0"

src_configure() {
		DISTUTILS_ARGS=(
						--qmake="$(qt6_get_bindir)"/qmake
						--qmake-setting="$(qt6_get_qmake_args)"
						--verbose
						--enable=QtWebEngineCore
						$(usev debug '--debug --qml-debug --tracing')
				)
}

