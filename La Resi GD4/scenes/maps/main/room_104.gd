extends Node2D

@onready var player = $Player

@onready var agustin_conserje = $"Static People/agustin conserje"
@onready var raul = $"Static People/raul"
@onready var ahmed = $"Static People/ahmed"

@onready var walls_C = $"Map/104 Set/walls C"
@onready var walls_B = $"Map/104 Set/walls B"
@onready var vertical_walls = $"Map/104 Set/vertical walls"
@onready var shadows_B = $"Map/104 Set/shadows B"

func _process(delta):
	back_and_forth(agustin_conserje, 12, 10)
	back_and_forth(raul, 13, 10)
	back_and_forth(ahmed, 13, 10)
	back_and_forth(walls_C, 12, 9)
	back_and_forth(walls_B, 12, 9)
	back_and_forth(vertical_walls, 12, 9)
	back_and_forth(shadows_B, 14, 9)
	
func back_and_forth(static_object, ordering_forth, ordering_back):
	if static_object.global_position.y > player.global_position.y:
		static_object.z_index = ordering_forth
	else:
		static_object.z_index = ordering_back

func _on_back_to_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")
