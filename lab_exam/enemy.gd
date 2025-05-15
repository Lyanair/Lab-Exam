extends CharacterBody2D

var target_pos

func _ready() -> void:
	self_modulate = Color.RED
	
func _process(delta: float) -> void:
	target_pos = global_position
	target_pos.x += -1250
	global_position = global_position.move_toward(target_pos,5)
	
