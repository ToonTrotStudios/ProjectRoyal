extends CharacterBody2D

var kiwiDamage = 25
var kiwiCooldown = 2.0
var lastKiwiThrowTime = 0.0

func _ready():
	# Initialization code

func throw_kiwi(target_position):
	if (OS.get_unix_time() - lastKiwiThrowTime) >= kiwiCooldown:
		# Perform the Kiwi throwing animation
		# Create and move a Kiwi instance toward the target_position
		# Apply damage to enemies hit by Kiwi
		lastKiwiThrowTime = OS.get_unix_time()
extends Node2D

# Reference to Bessie's node
var bessie_node

func _ready():
	bessie_node = $Bessie  # Replace with the actual path to Bessie's node

func _input(event):
	if event.is_action_pressed("click"):
		# Get the mouse position or touch position as the target for Kiwi
		var target_position = get_local_mouse_position()
		# Call Bessie's throw_kiwi function with the target position
		bessie_node.throw_kiwi(target_position)

extends CharacterBody2D

func _ready():
	# Initialization code

func throw_kiwi(target_position):
	# Implement Bessie's ability logic to throw kiwis
	# ...

# You may emit a signal or call a method in RecruitmentManager to handle recruitment
