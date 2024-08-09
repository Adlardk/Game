extends CharacterBody3D
##
## Simple left/right character controller
##

@onready var options_menu = preload("res://start screen/main_menu2.0/main_menu.tscn") as PackedScene

## Speed of character movement
const SPEED = 5.0
var score = 0

@export var move_left_action : String = "move_Left"
@export var move_right_action : String = "move_Right"

func _physics_process(_delta: float) -> void:
	# Use custom input actions
	var input_dir := Vector2(
		Input.get_action_strength(move_right_action) - Input.get_action_strength(move_left_action),
		0
	)
	
	# Calculate direction based on input
	var direction := (transform.basis * Vector3(input_dir.x, 0, 0)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
	
	var collision = get_last_slide_collision()
	if collision:
		print("Collided with: ", collision.get_collider())
		get_tree().quit()
