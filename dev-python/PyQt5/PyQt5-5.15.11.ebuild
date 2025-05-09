# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit python-r1 qmake-utils

DESCRIPTION="Python bindings for the Qt cross platform application toolkit"
HOMEPAGE="https://www.riverbankcomputing.com/software/pyqt/ https://pypi.org/project/PyQt5"
SRC_URI="https://files.pythonhosted.org/packages/0e/07/c9ed0bd428df6f87183fca565a79fee19fa7c88c7f00a7f011ab4379e77a/PyQt5-5.15.11.tar.gz -> PyQt5-5.15.11.tar.gz
"
CDEPEND="

	${PYTHON_DEPS}
	dev-qt/qtcore:5
	dev-qt/qtxml:5
	bluetooth? ( dev-qt/qtbluetooth:5 )
	dbus? (
		dev-python/dbus-python[${PYTHON_USEDEP}]
		dev-qt/qtdbus:5
	)
	declarative? ( dev-qt/qtdeclarative:5[widgets?] )
	designer? ( dev-qt/designer:5 )
	gui? ( dev-qt/qtgui:5[gles2-only=] )
	help? ( dev-qt/qthelp:5 )
	location? ( dev-qt/qtlocation:5 )
	multimedia? ( dev-qt/qtmultimedia:5[widgets?] )
	network? ( dev-qt/qtnetwork:5[ssl=] )
	opengl? ( dev-qt/qtopengl:5 )
	positioning? ( dev-qt/qtpositioning:5 )
	printsupport? ( dev-qt/qtprintsupport:5 )
	sensors? ( dev-qt/qtsensors:5 )
	serialport? ( dev-qt/qtserialport:5 )
	speech? ( dev-qt/qtspeech:5 )
	sql? ( dev-qt/qtsql:5 )
	svg? ( dev-qt/qtsvg:5 )
	testlib? ( dev-qt/qttest:5 )
	webchannel? ( dev-qt/qtwebchannel:5 )
	websockets? ( dev-qt/qtwebsockets:5 )
	widgets? ( dev-qt/qtwidgets:5 )
	x11extras? ( dev-qt/qtx11extras:5 )
	xmlpatterns? ( dev-qt/qtxmlpatterns:5 )
"
DEPEND="${CDEPEND}
"
RDEPEND="
	${CDEPEND}
dev-python/PyQt5-sip:=[${PYTHON_USEDEP}]
"
BDEPEND="
	dev-qt/qtcore:5
	dbus? ( virtual/pkgconfig )
	dev-python/PyQt-builder[${PYTHON_USEDEP}]
	dev-python/sip[${PYTHON_USEDEP}]
"

IUSE="bluetooth dbus debug declarative designer examples gles2-only gui help location
multimedia network opengl positioning printsupport sensors serialport speech
sql +ssl svg testlib webchannel websockets widgets x11extras xmlpatterns
"
SLOT="0"
LICENSE="GPL-3"
KEYWORDS="*"
S="${WORKDIR}/PyQt5-5.15.11"

src_configure() {
	pyqt_use_enable() {
		use "$1" || return

		if [[ $# -eq 1 ]]; then
			echo --enable=Qt${1^}
		else
			shift
			echo ${@/#/--enable=}
		fi
	}
	configuration() {
		local myconf=(
			sip-build
			--verbose
			--confirm-license
			--build-dir="${BUILD_DIR}"
			--scripts-dir="$(python_get_scriptdir)"
			--qmake="$(qt5_get_bindir)"/qmake
			--no-make
			$(usex debug '--debug --qml-debug --tracing' '')
			$(usex dbus '' '--no-dbus-python')
			$(usex declarative '' '--no-qml-plugin')
			$(usex designer '' '--no-designer-plugin')
			$(usex gles2-only '--disabled-feature=PyQt_Desktop_OpenGL' '')
			$(usex ssl '' '--disabled-feature=PyQt_SSL')
			--enable=pylupdate
			--enable=pyrcc
			--enable=Qt
			$(pyqt_use_enable bluetooth)
			--enable=QtCore
			$(pyqt_use_enable dbus QtDBus)
			$(pyqt_use_enable declarative QtQml QtQuick $(usex widgets QtQuickWidgets ''))
			$(pyqt_use_enable designer)
			$(pyqt_use_enable gui)
			$(pyqt_use_enable gui $(use gles2-only && echo _QOpenGLFunctions_ES2 || echo _QOpenGLFunctions_{2_0,2_1,4_1_Core}))
			$(pyqt_use_enable help)
			$(pyqt_use_enable location)
			$(pyqt_use_enable multimedia QtMultimedia $(usex widgets QtMultimediaWidgets ''))
			$(pyqt_use_enable network)
			$(pyqt_use_enable opengl QtOpenGL)
			$(pyqt_use_enable positioning)
			$(pyqt_use_enable printsupport QtPrintSupport)
			$(pyqt_use_enable sensors)
			$(pyqt_use_enable serialport QtSerialPort)
			$(pyqt_use_enable speech QtTextToSpeech)
			$(pyqt_use_enable sql)
			$(pyqt_use_enable svg)
			$(pyqt_use_enable testlib QtTest)
			$(pyqt_use_enable webchannel QtWebChannel)
			$(pyqt_use_enable websockets QtWebSockets)
			$(pyqt_use_enable widgets)
			$(pyqt_use_enable x11extras QtX11Extras)
			--enable=QtXml
			$(pyqt_use_enable xmlpatterns QtXmlPatterns)
		)
		echo "${myconf[@]}"
		"${myconf[@]}" || die

		# Run eqmake to respect toolchain and build flags
		run_in_build_dir eqmake5 -recursive ${PN}.pro
	}
	python_foreach_impl configuration
}
src_compile() {
	python_foreach_impl run_in_build_dir default
}
src_install() {
	installation() {
		emake INSTALL_ROOT="${D}" install
		python_optimize
		local exe
		for exe in "${D}$(python_get_scriptdir)"/*; do
			python_doexe "${exe}"
		done
	}
	python_foreach_impl run_in_build_dir installation
	einstalldocs
	if use examples; then
		dodoc -r examples
	fi
}

