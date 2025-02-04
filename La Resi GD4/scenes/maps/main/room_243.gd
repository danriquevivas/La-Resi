extends Node2D

@onready var player = $Player

#@onready var static person = $"Static People/"

#func _process(delta):
	#back_and_forth()
		
func back_and_forth(static_person):
	if static_person.position.y > player.position.y:
		static_person.z_index = 2
	else:
		static_person.z_index = 0

func _on_back_to_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")
