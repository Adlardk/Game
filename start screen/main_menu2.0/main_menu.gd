class_name MainMenu

extends Control
@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/Button as Button 
@onready var help_button = $MarginContainer/HBoxContainer/VBoxContainer/Button2 as Button 
@onready var exit_button = $VBoxContainer/Button5 as Button 
@onready var settings_button = $VBoxContainer2/Button4 as Button 
@onready var start_level = preload("res://Level/level_main.tscn") as PackedScene
 
func _ready():
	start_button.button_down.connect(on_start_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level) 
	
	
func on_exit_pressed() -> void:
	get_tree().quit()

