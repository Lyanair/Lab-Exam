extends CollisionShape2D

func _on_body_entered(body: CharacterBody2D) -> void:
	if body.name == "Player":
		body.lives = body.lives - 1
		self.queue_free()
