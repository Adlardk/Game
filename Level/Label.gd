extends Label

func _ready():
	text = "Score: 0"

func _process(delta):
	text = "Score: " + str(Global.score)
	
