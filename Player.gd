extends KinematicBody2D

const UP = Vector2(0,-1);
const FLAP = 100
const MAXFALLSPEED = 300
const GARVITY = 10

var motion = Vector2();


func _physics_process(delta):
	motion.y += GARVITY
	
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	
	if Input.is_action_just_pressed("FLAP"):
		motion.y = -FLAP
	
	motion = move_and_slide(motion,UP)
