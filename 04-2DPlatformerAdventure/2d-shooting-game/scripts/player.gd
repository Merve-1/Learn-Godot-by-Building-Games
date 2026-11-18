extends CharacterBody2D
signal shoot_requested
@export var speed: float = 400.0

func _physics_process(delta: float) -> void:
	var direction:= Input.get_axis("move_left", "move_right")
	velocity.x = direction * speed 
	velocity.y = 0 
	move_and_slide()
func _process(_delta: float) -> void: 
	if Input.is_action_just_pressed("shoot"):
		shoot_requested.emit()
	
