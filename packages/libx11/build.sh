# X11 package
TERMUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
TERMUX_PKG_DESCRIPTION="X11 client-side library"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Leonid Pliushch <leonid.pliushch@gmail.com>"
TERMUX_PKG_VERSION=1.6.9
TERMUX_PKG_REVISION=7
TERMUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libX11-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=9cc7e8d000d6193fa5af580d50d689380b8287052270f5bb26a5fb6b58b2bed1
TERMUX_PKG_DEPENDS="libandroid-support, libxcb"
TERMUX_PKG_BUILD_DEPENDS="xorgproto, xorg-util-macros, xtrans"
TERMUX_PKG_RECOMMENDS="xorg-xauth"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-malloc0returnsnull"

termux_step_post_make_install() {
	ln -sfr "${TERMUX_PREFIX}/lib/libX11.so" "${TERMUX_PREFIX}/lib/libX11.so.6"
}
