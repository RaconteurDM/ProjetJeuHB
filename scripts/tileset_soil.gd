tool
extends TileSet

func _is_tile_bound(drawn_tile, neighbour):
	#copy_col()
	return neighbour in get_tiles_ids()

func copy_col():
	var pos
	for ts in get_tiles_ids():
		if (tile_get_shapes(ts).empty()):
			pos = 0
			for x in 49:
				var shape = tile_get_shape(2, pos)
				if ts != 2 && x != 41 && x != 38:
					tile_add_shape(ts, shape, Transform2D(), false, Vector2(x / 4, x % 4))
					pos += 1
