submodules:
	git submodule foreach rm -rf *
	git submodule foreach --recursive git reset --hard HEAD
	git pull --recurse-submodules
	git submodule update --remote --recursive

symlinks: submodules
	rm -rf \
		libretro-database-dos/libretro-database \
		libretro-database-gametdb/libretro-database \
		libretro-database-goodtools/libretro-database \
		libretro-database-tic80/libretro-database
	ln -sf libretro-database libretro-database-dos/libretro-database
	ln -sf libretro-database libretro-database-gametdb/libretro-database
	ln -sf libretro-database libretro-database-goodtools/libretro-database
	ln -sf libretro-database libretro-database-tic80/libretro-database