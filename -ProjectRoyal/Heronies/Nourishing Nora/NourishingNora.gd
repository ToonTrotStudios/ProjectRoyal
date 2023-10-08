extends CharacterBody2D

const COOLDOWN = 15.0

func _ready():
	# Initialization code

async func nourish():
	# Play Nourishing Nora's animation or show her watering can

	# Apply the effect (instantly increase Queen Pump's belly size)
	QueenPump.increase_belly_size(100)  # Modify the size increase as needed

	# Cooldown
	await ToSignal(self, "timeout", COOLDOWN)
