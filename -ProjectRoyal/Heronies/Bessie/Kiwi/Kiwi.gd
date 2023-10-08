extends CharacterBody2D

var kiwi_damage = 0  # Damage value to be set in the Bessie script

func _ready():
	pass

func _physics_process(delta):
	# Move the Kiwi forward
	move_and_collide(Vector2(500, 0) * delta)

func _on_VisibilityNotifier2D_screen_exited():
	# Remove the Kiwi when it goes out of the screen
	queue_free()
