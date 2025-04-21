# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(  )
inherit python-any-r1 qt6-build

DESCRIPTION="Qt Declarative (Quick 2)"
SRC_URI="https://download.qt.io/archive/qt/6.8/6.8.3/submodules/qtdeclarative-everywhere-src-6.8.3.tar.xz -> qtdeclarative-everywhere-src-6.8.3.tar.xz"
SLOT=6

KEYWORDS="*"
IUSE="+jit vulkan"

DEPEND="
	~dev-qt/qtbase-${PV}:6[gui,sql,vulkan]
	~dev-qt/qtlanguageserver-${PV}:6
	~dev-qt/qtshadertools-${PV}:6
	~dev-qt/qtsvg-${PV}:6
	vulkan? ( dev-util/vulkan-headers )
"
RDEPEND="${DEPEND}"
BDEPEND="${PYTHON_DEPS}"

src_configure() {
	local mycmakeargs=(
		$(qt_feature jit qml_jit)
	)

	qt6-build_src_configure
}
