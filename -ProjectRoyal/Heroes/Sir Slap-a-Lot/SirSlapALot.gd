extends CharacterBody2D

# Define Sir Slap-a-Lot's abilities
var slapDamage = 10
var slapCooldown = 2.0
var lastSlapTime = 0.0

func _ready():
	# Initialization code

func slap():
	if (OS.get_unix_time() - lastSlapTime) >= slapCooldown:
		# Perform the slap animation and damage enemies
		lastSlapTime = OS.get_unix_time()
