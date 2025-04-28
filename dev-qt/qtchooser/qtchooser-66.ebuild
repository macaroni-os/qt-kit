# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
inherit qmake-utils toolchain-funcs

DESCRIPTION="Tool to quickly switch between multiple Qt installation"
HOMEPAGE="https://code.qt.io/cgit/qtsdk/qtchooser.git/"
SRC_URI="https://download.qt.io/official_releases/qtchooser/qtchooser-66.tar.xz -> qtchooser-66.tar.xz"
LICENSE="|| ( LGPL-2.1 GPL-3 )"
SLOT="0"
KEYWORDS="*"
src_compile() {
	emake \
	  CXX="$(tc-getCXX)" \
	  LFLAGS="${LDFLAGS}" \
	  prefix="${EPREFIX}/usr" \
	  "$@"
}
src_install() {
	emake \
	  CXX="$(tc-getCXX)" \
	  LFLAGS="${LDFLAGS}" \
	  prefix="${EPREFIX}/usr" \
	  INSTALL_ROOT="${D}" install
	# install configuration file
	cat > "${T}/qt5-${CHOST}.conf" <<-_EOF_ || die
	  $(qt5_get_bindir)
	  $(qt5_get_libdir)
	_EOF_
	(
	  insinto /etc/xdg/qtchooser
	  doins "${T}/qt5-${CHOST}.conf"
	)
	# convenience symlinks
	dosym qt5-"${CHOST}".conf /etc/xdg/qtchooser/5.conf
	dosym qt5-"${CHOST}".conf /etc/xdg/qtchooser/qt5.conf
	dosym qt5.conf /etc/xdg/qtchooser/default.conf
}


# vim: filetype=ebuild
