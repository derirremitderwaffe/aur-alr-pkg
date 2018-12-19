# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: julius <julius at julius-obk.de>
pkgname=alr
pkgver=0.6.0
pkgrel=1
epoch=
pkgdesc="Ada LIbrary REpository"
arch=(x86_64)
url="https://github.com/alire-project/alr"
license=('GPL-3')
groups=()
depends=('gcc-ada' 'gprbuild' 'git')
makedepends=()
checkdepends=()
optdepends=()
provides=("")
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("$pkgname::git+https://github.com/alire-project/alr.git#tag=v0.6.0"
"https://raw.githubusercontent.com/derirremitderwaffe/aur-alr-pkg/master/alr.sh")
noextract=()
md5sums=("SKIP" "SKIP")
validpgpkeys=()

_repo_branch=${1:-v0.6.0}




prepare() {
    
	#cd "$pkgname-$pkgver"
	#patch -p1 -i "$srcdir/$pkgname-$pkgver.patch" -- no patch
	#git clone -b "$repo_branch" "$url" 
	cd "$pkgname"
	git submodule update --init --recursive
    
}

build() {
	cd "$pkgname"
        gprbuild -j0 -p -XSELFBUILD=False -P alr_env.gpr

}

#check() {
	#cd "$pkgname-$pkgver"
	#make -k check
#}

package() {
	cd "$pkgname"
        mkdir -p $pkgdir/usr/share/alire
	cp -afvT ./ $pkgdir/usr/share/alire
	cd "$srcdir"
	mkdir -p $pkgdir/usr/bin/
	cp alr.sh $pkgdir/usr/bin/
	chmod 751 $pkgdir/usr/bin/alr.sh
}
