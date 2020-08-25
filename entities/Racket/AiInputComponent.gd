extends Node

class_name AiInputComponent

var racket;

onready var ball = get_node("/root/Game/Ball")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	racket = get_parent()
	racket.connect("update", self, "think");


func think():
	if not "direction" in racket:
		return
	if racket.position.y - ball.position.y > 20:
		racket.direction = Vector2.UP
	elif ball.position.y - racket.position.y > 20:
		racket.direction = Vector2.DOWN
	else:
		racket.direction = Vector2.ZERO
		
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
