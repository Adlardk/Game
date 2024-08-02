extends Area3D

const ROT_SPEED = 2 #number of degrees the coin rotates every frame


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_y(deg_to_rad(ROT_SPEED))
	
	if has_overlapping_bodies():
		queue_free()
		
func _on_item_collected():
	Global.add_score(1)  # Add 10 points
	queue_free()  # Remove the item from the scene
	
	
