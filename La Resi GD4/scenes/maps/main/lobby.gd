extends Node2D

@onready var player = $Player

@onready var martina_cocinera = $"Static People/martina cocinera"
@onready var yoly_cocinera = $"Static People/yoly cocinera"
@onready var celeste_cocinera = $"Static People/celeste cocinera"
@onready var carmen_cocinera = $"Static People/carmen cocinera"
@onready var victoria_cocinera = $"Static People/victoria cocinera"
@onready var santi_conserje = $"Static People/santi conserje"
@onready var jose_conserje = $"Static People/jose conserje"
@onready var espe_conserje = $"Static People/espe conserje"

func _process(delta):
	back_and_forth(martina_cocinera)
	back_and_forth(yoly_cocinera)
	back_and_forth(celeste_cocinera)
	back_and_forth(carmen_cocinera)
	back_and_forth(victoria_cocinera)
	back_and_forth(santi_conserje)
	back_and_forth(jose_conserje)
	back_and_forth(espe_conserje)
	
	#if player.position.x = 
	
func back_and_forth(static_person):
	if static_person.position.y > player.position.y:
		static_person.z_index = 2
	else:
		static_person.z_index = 0

func _on_back_to_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")
