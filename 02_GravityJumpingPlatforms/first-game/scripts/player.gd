extends CharacterBody2D
@export var speed: float = 250.0
@export var gravity: float = 1200.0
@export var jumps_velocity: float = -450.0
var jumps_remaining: int = 2
func _physics_process(delta: float) -> void: 
	var direction := Input.get_axis("move_left", "move_right")
	velocity.x = direction * speed
	if is_on_floor():
		jumps_remaining = 2
	else:
		velocity.y +=gravity * delta
	if Input.is_action_just_pressed("jump") and jumps_remaining > 0:
		velocity.y = jumps_velocity
		jumps_remaining -= 1
	move_and_slide()
