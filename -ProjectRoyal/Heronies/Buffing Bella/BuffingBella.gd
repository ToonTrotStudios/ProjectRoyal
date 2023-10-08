extends CharacterBody2D

const BUFF_DURATION = 5.0
const COOLDOWN = 10.0

var isBuffActive = false

func _ready():
	# Initialization code

async func activate_buff():
	if !isBuffActive:
		isBuffActive = true
		# Play Buffing Bella's animation or show her aura

		# Apply the buff (increase belly growth rate)
		QueenPump.belly_growth_rate *= 2  # Modify this as needed

		await ToSignal(self, "timeout", BUFF_DURATION)
		
		# Remove the buff
		isBuffActive = false
		QueenPump.belly_growth_rate /= 2

	# Cooldown
	await ToSignal(self, "timeout", COOLDOWN)
