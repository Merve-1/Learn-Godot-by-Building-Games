extends Node2D
@export var speed: float = 200.0
@export var sprite_multiplier = 2.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var horizontal = Input.get_axis("move_left","move_right")
	var vertical = Input.get_axis("move_up", "move_down")
	
	var direction = Vector2(horizontal, vertical)
	var current_speed = speed
	if Input.is_action_pressed("sprite_speed"):
		current_speed *= sprite_multiplier
	position += direction * current_speed * delta
