submodules: clean
	git submodule update --remote --merge --init

symlinks: submodules clean
	ln -sf ../libretro-database libretro-database-dos/libretro-database
	ln -sf ../libretro-database libretro-database-gametdb/libretro-database
	ln -sf ../libretro-database libretro-database-goodtools/libretro-database
	ln -sf ../libretro-database libretro-database-tic80/libretro-database

clean: 
	rm -rf \
		libretro-database-dos/libretro-database \
		libretro-database-gametdb/libretro-database \
		libretro-database-goodtools/libretro-database \
		libretro-database-tic80/libretro-database