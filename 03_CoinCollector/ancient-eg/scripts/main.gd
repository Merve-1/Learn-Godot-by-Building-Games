extends Node2D

var score: int = 0
var total_coins: int = 0

@onready var score_label: Label = $CanvasLayer/ScoreLabel
func add_score(points: int) -> void:
	score+= points # score = score + points 
	print("score: ", score)
	score_label.text = "Score: " + str(score) #"Score" + "4"
	
	#if score>= total_coins * 10:
		#print("You win")

func _on_coin_collected(points: int) -> void:
	add_score(points)
