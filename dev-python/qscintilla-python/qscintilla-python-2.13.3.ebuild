# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit python-r1 qmake-utils

DESCRIPTION="Python bindings for QScintilla"
HOMEPAGE="https://www.riverbankcomputing.com/software/qscintilla/intro"

MY_PN=QScintilla
MY_P=${MY_PN}_src-${PV/_pre/.dev}
SRC_URI=https://www.riverbankcomputing.com/static/Downloads/QScintilla/2.13.3/QScintilla_src-2.13.3.tar.gz -> QScintilla_src-2.13.3.tar.gz

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE="debug"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	>=dev-python/PyQt5-5.12[gui,printsupport,widgets,${PYTHON_USEDEP}]
	>=dev-python/PyQt5-sip-6.6.2:=[${PYTHON_USEDEP}]
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtprintsupport:5
	dev-qt/qtwidgets:5
	~dev-qt/qscintilla-${PV}:=
"
DEPEND="${RDEPEND}
	>=dev-python/sip-6.6.2[${PYTHON_USEDEP}]
"

S=${WORKDIR}/${MY_P}/Python

src_prepare() {
	default
	mv pyproject{-qt5,}.toml || die
}

src_configure() {
	configuration() {
		local myconf=(
			sip-build
			--verbose
			--build-dir="${BUILD_DIR}"
			--scripts-dir="$(python_get_scriptdir)"
			--qmake="$(qt5_get_bindir)"/qmake
			--no-make
			$(usev debug '--debug --tracing')
		)
		echo "${myconf[@]}"
		"${myconf[@]}" || die

		# Run eqmake to respect toolchain and build flags
		run_in_build_dir eqmake5 -recursive ${MY_PN}.pro
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
	}
	python_foreach_impl run_in_build_dir installation
}