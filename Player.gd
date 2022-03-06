extends KinematicBody2D

const UP = Vector2(0,-1);
const FLAP = 200
const MAXFALLSPEED = 200
const GARVITY = 10

var motion = Vector2();


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	motion.y += GARVITY
	
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	
	if Input.is_action_just_pressed("FLAP"):
		motion.y = -FLAP
	
	motion = move_and_slide(motion,UP)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
