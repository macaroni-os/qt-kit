# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="c576985da4e6a4a0b85d5229263777e7197494e0"

QT5_MODULE="qtlocation"
inherit qt5-build

DESCRIPTION="Physical position determination library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtlocation/-/archive/c576985da4e6a4a0b85d5229263777e7197494e0/qtlocation-c576985da4e6a4a0b85d5229263777e7197494e0.tar.bz2 -> qtlocation-c576985da4e6a4a0b85d5229263777e7197494e0.tar.bz2"

KEYWORDS="*"

IUSE="geoclue +qml"

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	geoclue? ( =dev-qt/qtdbus-5.15.2* )
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
"
DEPEND="${RDEPEND}"
PDEPEND="
	geoclue? ( app-misc/geoclue:2.0 )
"

QT5_TARGET_SUBDIRS=(
	src/3rdparty/clipper
	src/3rdparty/poly2tri
	src/3rdparty/clip2tri
	src/positioning
	src/plugins/position/positionpoll
)

pkg_setup() {
	use geoclue && QT5_TARGET_SUBDIRS+=( src/plugins/position/geoclue2 )
	use qml && QT5_TARGET_SUBDIRS+=(
		src/positioningquick
		src/imports/positioning
	)
}