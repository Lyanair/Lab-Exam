extends Node2D

var enemy_scene:PackedScene
@export var counter = 0


func _ready() -> void:
	enemy_scene = load("res://Enemy.tscn")
	
func _on_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	enemy.position.x = 1200
	enemy.position.y = randf_range(16,625)
	get_parent().add_child(enemy)
	counter += 1
