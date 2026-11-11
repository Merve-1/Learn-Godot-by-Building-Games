extends Area2D
signal collected(points:int)

@export var coin_value:int = 10
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		collected.emit(coin_value)
		print("Coin Collected")
		queue_free()
