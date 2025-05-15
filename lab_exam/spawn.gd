extends Node2D

var enemy_scene:PackedScene

func _ready() -> void:
	enemy_scene = load("res://Enemy.tscn")
	
func _on_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	enemy.position.x = 1000
	enemy.position.y = randf_range(16,625)
	get_parent().add_child(enemy) # Replace with function body.
