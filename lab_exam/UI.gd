extends Control

@onready var Player =$"../Player"
@onready var Spawner=$"../Spawner"
@onready var Health=$Label
@onready var Enemies=$Label2

func _process(delta: float) -> void:
	Health.text = ("Lives: " + str(Player.lives))
	Enemies.text = ("Enemies: " + str(Spawner.counter))
