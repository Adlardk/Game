extends Node

var score: int = 0

# Function to increase the score
func add_score(amount: int):
	score += amount
	print("Score: ", score)

# Function to reset the score
func reset_score():
	score = 0
	print("Score reset to 0")
