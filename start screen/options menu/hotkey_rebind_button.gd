class_name HotkeyRebindButton
extends Control

@onready var label = $HBoxContainer/Label as Label
@onready var button = $HBoxContainer/Button as Button


@export var action_name : String = "move_left"


func _ready():
	set_process_unhandled_key_input(false)
	set_action_name()
	set_text_for_key()

func set_action_name() -> void:
	label.text = "Unassigned"
	
	match action_name:
		"move_left":
			label.text = "move left"
		"move_Right":
			label.text = "move Right"


func set_text_for_key() -> void:
	var action_events = InputMap.action_get_events(action_name)
	print(action_events)






