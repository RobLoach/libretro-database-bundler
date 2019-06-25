symlinks: submodules clean
	ln -s ../libretro-database libretro-database-dos/libretro-database
	ln -s ../libretro-database libretro-database-gametdb/libretro-database
	ln -s ../libretro-database libretro-database-goodtools/libretro-database
	ln -s ../libretro-database libretro-database-tic80/libretro-database

submodules: clean
	git submodule update --remote --merge --init

clean: 
	rm -rf \
		libretro-database-dos/libretro-database \
		libretro-database-gametdb/libretro-database \
		libretro-database-goodtools/libretro-database \
		libretro-database-tic80/libretro-database