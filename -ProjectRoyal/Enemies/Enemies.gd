extends CharacterBody2D

var health = 100

@warning_ignore("unused_parameter")
func _physics_process(delta):
	# Check if the enemy is defeated and remove it
	if health <= 0:
		queue_free()
