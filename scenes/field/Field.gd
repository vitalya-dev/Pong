extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal goal_left
signal goal_right


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_goal_left_body_entered(body):
	print_debug("goal left")
	emit_signal("goal_left")

func _on_goal_right_body_entered(body):
	print_debug("goal left")
	emit_signal("goal_right")



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_GoalLeft_body_entered(body):
	pass # Replace with function body.
