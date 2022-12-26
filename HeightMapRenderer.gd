class_name HeighMapRenderer
extends Node2D

var colors = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]


onready var Map = $TileMap

func _ready():
	var height_map = load_file("res://assets/Day12_TestData.tres")
	make_height_map(height_map)


func make_height_map(height_map) -> void:
	Map.clear()
	for row in range(height_map.size()):
		for col in range(height_map[0].length()):
			var height: int = get_height(height_map[row].ord_at(col))
			var scaled_height : int = height / 2
			Map.set_cellv(Vector2(col, row), colors[scaled_height])


func get_height(height :int) -> int:
	return height - ord("a")


func load_file(fileName):
	var height_map = []
	var file = File.new()
	file.open(fileName, File.READ)
	while not file.eof_reached():
		height_map.append(file.get_line())
	file.close()
	height_map.remove(height_map.size() - 1)
	return height_map
