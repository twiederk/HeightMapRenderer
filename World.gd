extends Node2D

#aabqponm
#abcryxxl
#accszzxk
#acctuvwj
#abdefghi

var row1 = "aabqponm"
var row2 = "abcryxxl"
var row3 = "accszzxk"
var row4 = "acctuvwj"
var row5 = "abdefghi"
var height_map = [row1, row2, row3, row4, row5]

var colors = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]


onready var Map = $TileMap

func _ready():
	make_height_map()


func make_height_map():
	Map.clear()
	for row in range(height_map.size()):
		for col in range(height_map[0].length()):
			var height: int = get_height(height_map[row].ord_at(col))
			var scaled_height = height / 2
			Map.set_cellv(Vector2(col, row), colors[scaled_height])


func get_height(height :int) -> int:
	return height - ord("a")
