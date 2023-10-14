# meta-name: Basic 8 Direction Movement
# meta-description: Simple starting point to get a character moving in 8 directions
# meta-space-indent: 4

extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	var h_dir = Input.get_axis("ui_left", "ui_right")
	if h_dir:
		velocity.x = h_dir * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var v_dir = Input.get_axis("ui_up", "ui_down")
	if v_dir:
		velocity.y = v_dir * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	move_and_slide()
