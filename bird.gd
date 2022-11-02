extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const JUMP = 350
const MAXGRAVSPEED = 300
const GRAVITY = 15
const UP = Vector2(0,-1)
var motion= Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	motion.y += GRAVITY
	if motion.y > MAXGRAVSPEED:
		motion.y = MAXGRAVSPEED
	if Input.is_action_just_pressed("SKOK"):
		motion.y = - JUMP
	motion = move_and_slide(motion,UP)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
