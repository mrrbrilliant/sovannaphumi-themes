pkgname=sovannaphumi-themes
pkgver=0.1.0
pkgrel=1
arch=('any')
pkgdesc="KOOMPI themes customized for Sovannaphumi School"
url="https://koompi.com"
source=("${pkgname}::git+https://github.com/mrrbrilliant/sovannaphumi-themes.git")
md5sums=('SKIP')

package() {
    mkdir -p ${pkgdir}/usr/share/plasma/look-and-feel
    cp -r ${srcdir}/{pkgname}/org.koompi.theme.sovannaphumi-light ${pkgdir}/usr/share/plasma/look-and-feel
    cp -r ${srcdir}/{pkgname}/org.koompi.theme.sovannaphumi-dark ${pkgdir}/usr/share/plasma/look-and-feel
    cp ${srcdir}/{pkgname}/logo.png ${pkgdir}/usr/share/icons/koompi/sovannaphumi-{dark,light}.png
}