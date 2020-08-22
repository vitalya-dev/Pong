extends KinematicBody2D

signal update

export var move_speed = 250
var direction = Vector2()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	emit_signal("update")

func _physics_process(delta):
	if direction.length() > 0:
		move_and_collide(direction.normalized() * delta * move_speed)
