# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Your Name <youremail@domain.com>
pkgname=alr
pkgver=0.6.0
pkgrel=1
epoch=
pkgdesc="Ada LIbrary REpository"
arch=(x86_64)
url=
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
source=("$pkgname::git+https://github.com/alire-project/alr.git#tag=v0.6.0")
noextract=()
md5sums=("SKIP")
validpgpkeys=()

repo_branch=${1:-v0.6.0}




prepare() {
    
	#cd "$pkgname-$pkgver"
	#patch -p1 -i "$srcdir/$pkgname-$pkgver.patch" -- no patch
	#git clone -b "$repo_branch" "$url" 
	cd "$pkgname"
	git submodule update --init --recursive
    
}

build() {
	cd "$pkgname"
	#./configure --prefix=/usr
	#make
        gprbuild -j0 -p -XSELFBUILD=False -P alr_env.gpr

}

#check() {
	#cd "$pkgname-$pkgver"
	#make -k check
#}

package() {
	cd "$pkgname"
#	make DESTDIR="$pkgdir/" install
        mkdir -p $pkgdir/usr/share/alire
	cp -afvT ./ $pkgdir/usr/share/alire
}
