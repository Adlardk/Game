extends Label


func _process(delta):
	text = "Your score was " + str(Global.score)
