extends Node

class_name PlayerInputComponent

var player;
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_parent()
	player.connect("update", self, "handle_input");

func handle_input():
	if not "direction" in player:
		return
	player.direction = Vector2()
	if Input.is_action_pressed("ui_up"):
		player.direction.y -= 1
	if Input.is_action_pressed("ui_down"):
		player.direction.y += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
