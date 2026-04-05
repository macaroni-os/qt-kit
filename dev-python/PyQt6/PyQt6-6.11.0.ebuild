# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="sip"
inherit distutils-r1 qmake-utils

DESCRIPTION="Python bindings for the Qt cross platform application toolkit"
HOMEPAGE="https://www.riverbankcomputing.com/software/pyqt/ https://pypi.org/project/PyQt6"
SRC_URI="https://files.pythonhosted.org/packages/8b/47/b25c13eca5bebc6505394d0223e46d7ebf0c57dcac2ed908d7d19b18ab6b/pyqt6-6.11.0.tar.gz -> pyqt6-6.11.0.tar.gz
"
CDEPEND="

	${PYTHON_DEPS}
	dev-python/dbus-python[${PYTHON_USEDEP}]
	dev-python/sip[${PYTHON_USEDEP}]
	dev-qt/qtbase:6[-gles2-only,gui]
	dev-qt/qtdeclarative:6
	dev-qt/qtsvg:6
	dev-qt/qttools:6[assistant]
	bluetooth? ( dev-qt/qtconnectivity:6 )
	multimedia? ( dev-qt/qtmultimedia:6 )
	pdf? ( dev-qt/qtwebengine:6 )
	positioning? ( dev-qt/qtlocation:6 )
	quick3d? ( dev-qt/qtquick3d:6 )
	remoteobjects? ( dev-qt/qtremoteobjects:6 )
	sensors? ( dev-qt/qtsensors:6 )
	serialport? ( dev-qt/qtserialport:6 )
	speech? ( dev-qt/qtspeech:6 )
	sql? ( dev-qt/qtbase:6[sql] )
	statemachine? ( dev-qt/qtscxml:6 )
	webchannel? ( dev-qt/qtwebchannel:6 )
	websockets? ( dev-qt/qtwebsockets:6 )
"
DEPEND="${CDEPEND}
"
RDEPEND="
	${CDEPEND}
dev-python/PyQt6-sip:=[${PYTHON_USEDEP}]
"
BDEPEND="
	dev-python/PyQt6-sip[${PYTHON_USEDEP}]
	dev-python/PyQt-builder[${PYTHON_USEDEP}]
	dev-python/PyQt-builder[${PYTHON_USEDEP}]
	dev-python/sip[${PYTHON_USEDEP}]
"
IUSE="
	bluetooth debug multimedia pdf positioning quick3d remoteobjects sensors serialport speech
	sql statemachine webchannel websockets"
SLOT="0"
LICENSE="GPL-3"
KEYWORDS="*"
S="${WORKDIR}/pyqt6-6.11.0"

python_configure_all() {

		pyqt_use_enable() {
				use "$1" || return

				if [[ $# -eq 1 ]]; then
						echo --enable=Qt${1^}
				else
						shift
						echo ${@/#/--enable=}
				fi
		}
		DISTUTILS_ARGS=(
				--qmake="$(qt6_get_bindir)"/qmake
				--qmake-setting="$(qt6_get_qmake_args)"
				--verbose
				--confirm-license

				$(usex debug '--debug --qml-debug' '')
				--no-designer-plugin
				--disabled-feature=PyQt_OpenGL_ES2
				--disabled-feature=PyQt_Vulka
				--disabled-feature=PyQt_Permissions
				--enable=QtCore
				--enable=QtDBus
				--enable=QtGui
				--enable=QtHelp
				--enable=QtNetwork
				--enable=QtOpenGL
				--enable=QtOpenGLWidgets
				--enable=QtPrintSupport
				--enable=QtQml
				--enable=QtQuick
				--enable=QtQuickWidgets
				--enable=QtSvg
				--enable=QtSvgWidgets
				--enable=QtTest
				--enable=QtWidgets
				--enable=QtXml
				$(pyqt_use_enable bluetooth QtBluetooth)
				$(pyqt_use_enable bluetooth QtNfc)
				$(pyqt_use_enable multimedia Multimedia)
				$(pyqt_use_enable multimedia QtMultimediaWidgets)
				$(pyqt_use_enable pdf QtPdf)
				$(pyqt_use_enable pdf QtPdfWidgets)
				$(pyqt_use_enable positioning QtPositioning)
				$(pyqt_use_enable quick3d QtQuick3d)
				$(pyqt_use_enable remoteobjects QtRemoteObjects)
				$(pyqt_use_enable sensors QtSensors)
				$(pyqt_use_enable serialport QtSerialPort)
				$(pyqt_use_enable speech QtTextToSpeech)
				$(pyqt_use_enable sql QtSql)
				$(pyqt_use_enable statemachine QtStateMachine)
				$(pyqt_use_enable webchannel QtWebChannel)
				$(pyqt_use_enable websockets QtWebSockets)
		)
}

python_install_all() {
		einstalldocs
}

