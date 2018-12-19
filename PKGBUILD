# Maintainer: julius <julius at julius-obk.de>
pkgname=alr
pkgver=0.6.0
pkgrel=1
pkgdesc="Ada LIbrary REpository tool"
arch=(x86_64)
url="https://github.com/alire-project/alr"
license=('GPL-3')
groups=()

depends=('gcc-ada' 'gprbuild' 'git')

source=("$pkgname::git+https://github.com/alire-project/alr.git#tag=v0.6.0"
"https://raw.githubusercontent.com/derirremitderwaffe/aur-alr-pkg/master/alr.sh")
sha256sums=("SKIP" "4d505ed68142de0f0960ad4182abe71271afe4e55435e9b9ad67dc88b73c5ac7")

_repo_branch=${1:-v0.6.0}




prepare() {
	cd "$pkgname"
	git submodule update --init --recursive
    
}

build() {
	cd "$pkgname"
        gprbuild -j0 -p -XSELFBUILD=False -P alr_env.gpr
}
package() {
	cd "$pkgname"
        mkdir -p $pkgdir/usr/share/alire
	cp -afvT ./ $pkgdir/usr/share/alire
	cd "$srcdir"
	mkdir -p $pkgdir/usr/bin/
	cp alr.sh $pkgdir/usr/bin/
	chmod 751 $pkgdir/usr/bin/alr.sh
}
