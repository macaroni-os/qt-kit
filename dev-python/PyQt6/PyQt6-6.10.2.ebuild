# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="sip"
inherit distutils-r1 qmake-utils

DESCRIPTION="Python bindings for the Qt cross platform application toolkit"
HOMEPAGE="https://www.riverbankcomputing.com/software/pyqt/ https://pypi.org/project/PyQt6"
SRC_URI="https://files.pythonhosted.org/packages/96/03/e756f52e8b0d7bb5527baf8c46d59af0746391943bdb8655acba22ee4168/pyqt6-6.10.2.tar.gz -> pyqt6-6.10.2.tar.gz
"
CDEPEND="

	${PYTHON_DEPS}
	dev-python/dbus-python[${PYTHON_USEDEP}]
	dev-python/sip[${PYTHON_USEDEP}]
	dev-qt/qtbase:6[gles2-only?,gui,vulkan?,wayland?]
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
DEPEND="
${CDEPEND}

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
	sql statemachine webchannel websockets vulkan gles2-only wayland"
SLOT="0"
LICENSE="GPL-3"
KEYWORDS="*"
S="${WORKDIR}/pyqt6-6.10.2"

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
				$(usex vulkan '' '--disabled-feature=PyQt_Vulkan')
				$(usex wayland '' '--disabled-feature=PyQt_Wayland')
				$(usex gles2-only '' '--disabled-feature=PyQt_OpenGL_ES2')
				$(pyqt_use_enable bluetooth QtBluetooth)
				$(pyqt_use_enable bluetooth QtNfc)
				$(pyqt_use_enable multimedia QtMultimedia)
				$(pyqt_use_enable multimedia QtMultimediaWidgets)
				$(pyqt_use_enable pdf QtPdf)
				$(pyqt_use_enable pdf QtPdfWidgets)
				$(pyqt_use_enable positioning QtPositioning)
				$(pyqt_use_enable quick3d QtQuick3D)
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

