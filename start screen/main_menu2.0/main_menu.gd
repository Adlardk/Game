class_name MainMenu
extends Control


@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/start_button as Button 
@onready var exit_button = $MarginContainer/HBoxContainer/VBoxContainer/exit_button as Button 
@onready var options_button = $MarginContainer/HBoxContainer/VBoxContainer/options_button as Button 
@onready var start_level = preload("res://Level/level_main.tscn") as PackedScene
 

func _ready():
	handle_connecting_signals() 
	
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level) 
	
	
func on_exit_pressed() -> void:
	get_tree().quit()

func handle_connecting_signals() -> void:
	start_button.button_down.connect(on_start_pressed)
	exit_button.button_down.connect(on_exit_pressed)

