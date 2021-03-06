extends KinematicBody2D


export var initial_ball_speed = 300
export var speed_commulator = 50
var ball_speed = initial_ball_speed

export var hit_counter = 0
var max_hitcounter = 12
var direction = Vector2()


func set_random_direction():
	direction = Vector2(1 if randi() % 10 < 5 else -1, rand_range(-1, 1)).normalized()

func _physics_process(delta):
	var collision = move_and_collide(direction.normalized() * delta * ball_speed)
	if collision:
		direction = direction.bounce(collision.normal).normalized()
		if collision.collider.is_in_group("rackets"):
			hit_counter += 1
			ball_speed += speed_commulator
			$RacketSound.play()
		else:
			$WallSound.play()

func reset():
	position = Vector2(512, 256)
	direction = Vector2()
	hit_counter = 0
		

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
