extends Area2D
signal enemy_destroyed
@export var speed: float = 600.0
func _process(delta: float) -> void:
	position.y -= speed * delta
	if global_position.y < -50:
		queue_free()

func _on_area_entered(area: Area2D) -> void:
	print("Bullet detected an area: ", area.name)
	if area.is_in_group("enemies"):
		print("ENEMY HIT")
		enemy_destroyed.emit()
		area.queue_free()
		queue_free()
