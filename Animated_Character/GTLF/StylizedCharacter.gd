extends Node3D

func _ready():
	var anim_player = $AnimationPlayer2
	if anim_player:
		anim_player.play("run")
	else:
		print("AnimationPlayer not found")
