class_name HotkeyRebindButton
extends Control

@onready var label = $HBoxContainer/Label as Label
@onready var button = $HBoxContainer/Button as Button

@export var action_name : String = "move_Left"

func _ready():
	set_process_unhandled_key_input(false)
	set_action_name()
	set_text_for_key()

func set_action_name() -> void:
	label.text = "Unassigned"
	match action_name:
		"move_Left":
			label.text = "move Left"
		"move_Right":
			label.text = "move Right"

func set_text_for_key() -> void:
	var action_events = InputMap.action_get_events(action_name)
	if action_events.size() > 0:
		var action_event = action_events[0]
		var action_keycode = OS.get_keycode_string(action_event.physical_keycode)
		button.text = "%s" % action_keycode
	else:
		button.text = "No Key Assigned..."

func _on_button_toggled(button_pressed):
	if button_pressed:
		button.text = "press any key..."
		set_process_unhandled_key_input(true)

		# Disable input for other buttons in the group
		for i in get_tree().get_nodes_in_group("hotkey_button"):
			if i is HotkeyRebindButton and i != self:
				i.set_process_unhandled_key_input(false)
	else:
		set_process_unhandled_key_input(false)
		set_text_for_key()

func _unhandled_key_input(event):
	if button.button_pressed:
		rebind_action_key(event)
		button.button_pressed = false

func rebind_action_key(event) -> void:
	InputMap.action_erase_events(action_name)
	InputMap.action_add_event(action_name, event)
	set_process_unhandled_key_input(false)
	set_text_for_key()
