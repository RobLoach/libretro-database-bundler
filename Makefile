up: symlinks
	cd libretro-database-dos && npm it
	cd libretro-database-gametdb && npm it
	cd libretro-database-goodtools && npm it
	cd libretro-database-tic80 && npm it
	cd libretro-database-scummvm && npm it

symlinks: submodules clean
	ln -s ../libretro-database libretro-database-dos/libretro-database
	ln -s ../libretro-database libretro-database-gametdb/libretro-database
	ln -s ../libretro-database libretro-database-goodtools/libretro-database
	ln -s ../libretro-database libretro-database-tic80/libretro-database
	ln -s ../libretro-database libretro-database-scummvm/libretro-database

submodules: clean
	git submodule update --remote --merge --init

clean: 
	rm -rf \
		libretro-database-dos/libretro-database \
		libretro-database-gametdb/libretro-database \
		libretro-database-goodtools/libretro-database \
		libretro-database-tic80/libretro-database \
		libretro-database-scummvm/libretro-database
