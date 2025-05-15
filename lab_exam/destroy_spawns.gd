extends Area2D

func _on_body_entered(body: CharacterBody2D) -> void:
	if body.name == "Enemy":
		body.queue_free()
