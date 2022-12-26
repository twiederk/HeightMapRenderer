extends Node2D

var width = 20  # width of map (in tiles)
var height = 12  # height of map (in tiles)


var row1 = [0, 1, 2, 3, 4]
var row2 = [5, 6, 7, 8, 9]

var height_map = [row1, row2]

# get a reference to the map for convenience
onready var Map = $TileMap

func _ready():
#	randomize()
#	tile_size = Map.cell_size
	make_maze()


func make_maze():
#	var unvisited = []  # array of unvisited tiles
#	var stack = []
	# fill the map with solid tiles
	Map.clear()
	for x in range(height_map[0].size()):
		for y in range(height_map.size()):
#			unvisited.append(Vector2(x, y))
			Map.set_cellv(Vector2(x, y), height_map[y][x])
