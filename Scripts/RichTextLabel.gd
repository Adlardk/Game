extends RichTextLabel

func _ready():
	# Set the initial text
	text = "Score: 0"

func _process(delta):
	# Update the label with the current score
	text = "Score: " + str(Global.score)
