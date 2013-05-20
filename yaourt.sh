mkdir yaourt
cd yaourt

wget http://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz
tar -xzvf package-query.tar.gz

cd package-query
sudo makepkg --asroot -s
sudo pacman -U package-query-*.tar.xz
cd ..

wget http://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz
tar -xzvf yaourt.tar.gz

cd yaourt
sudo makepkg --asroot -s
sudo pacman -U yaourt-*.tar.xz
cd ..

cd ..
rm -r ./yaourt
