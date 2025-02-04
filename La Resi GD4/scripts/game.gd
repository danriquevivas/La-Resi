extends Node2D

func _on_menu_map_selection(map):
	if map != "exit":
		get_tree().change_scene_to_file("res://scenes/maps/main/" + map + ".tscn")
	else:
		get_tree().quit()
