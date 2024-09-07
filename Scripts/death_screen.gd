extends Control

@onready var back_button = $MarginContainer/HBoxContainer/VBoxContainer/Back_button as Button

@onready var main_menu = load("res://start screen/main_menu/main_menu.tscn") as PackedScene

func _ready():
	handle_connecting_signals()
	
func on_back_pressed() -> void:
	get_tree().change_scene_to_packed(main_menu) 
	
func handle_connecting_signals() -> void:
	back_button.button_down.connect(on_back_pressed)
