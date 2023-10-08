extends CharacterBody2D

const FEAST_DURATION = 10.0
const COOLDOWN = 30.0

var isFeasting = false

func _ready():
	# Initialization code

async func start_feast():
	if !isFeasting:
		isFeasting = true
		# Play Gourmet Gabby's animation or show her serving dishes

		# Apply the feast effect (greatly increase Queen Pump's belly size)
		QueenPump.increase_belly_size(300)  # Modify the size increase as needed

		await ToSignal(self, "timeout", FEAST_DURATION)
		
		# Stop the feast
		isFeasting = false

	# Cooldown
	await ToSignal(self, "timeout", COOLDOWN)
