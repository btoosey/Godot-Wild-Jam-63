extends CharacterBody2D

@export var speed: float = 400

func _process(_delta):
	get_input()
	move_and_slide()
	
func get_input():
	var input_direction: Vector2 = Input.get_vector('left', 'right', 'up', 'down')
	velocity = input_direction * speed
