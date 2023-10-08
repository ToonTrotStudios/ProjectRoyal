extends CharacterBody2D

var bellySize = 1
var bellyButtonPower = 1

func _physics_process(delta):
	# Continuously increase belly size
	bellySize += delta
	# Update the queen's appearance based on belly size
	update_queen_appearance()
	
	# Check for input or idle actions (e.g., defeating enemies)
	if Input.is_action_pressed("click"):
		use_belly_button()

func use_belly_button():
	# Activate the belly button's power and defeat enemies
	# Add logic to handle enemy interactions
	pass

func update_queen_appearance():
	# Update queen's appearance based on belly size
	pass
