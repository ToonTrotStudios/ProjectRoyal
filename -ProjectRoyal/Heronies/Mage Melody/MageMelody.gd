extends CharacterBody2D

# Define Mage Melody's abilities
var spellDamage = 20
var spellCooldown = 3.0
var lastSpellTime = 0.0

func _ready():
	# Initialization code

func cast_spell():
	if (OS.get_unix_time() - lastSpellTime) >= spellCooldown:
		# Perform the spell casting animation and damage enemies
		lastSpellTime = OS.get_unix_time()
