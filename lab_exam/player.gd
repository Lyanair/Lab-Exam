extends CharacterBody2D

@export var lives = 5
var speed = 10
signal dead

func _process(delta: float) -> void:
	if Input.is_action_pressed("Up"):
		global_position.y -= speed
	if Input.is_action_pressed("Down"):
		global_position.y += speed
	if Input.is_action_pressed("Right"):
		global_position.x += speed
	if Input.is_action_pressed("Left"):
		global_position.x -= speed
	move_and_slide()
	
	if lives == 0:
		emit_signal("dead")
		
