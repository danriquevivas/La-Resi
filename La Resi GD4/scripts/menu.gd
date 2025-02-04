# Menu (attached to the Menu node)

extends Control

signal map_selection(selection: String)

func _on_button_104_pressed():
	emit_signal("map_selection", "room_104")
	
func _on_button_243_pressed():
	emit_signal("map_selection", "room_243")

func _on_button_341_pressed():
	emit_signal("map_selection", "room_341")

func _on_button_lobby_pressed():
	emit_signal("map_selection", "lobby")

func _on_button_the_lab_pressed():
	emit_signal("map_selection", "the_lab")

func _on_button_exit_pressed():
	emit_signal("map_selection", "exit")
