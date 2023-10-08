extends CharacterBody2D

# Define Archer Arrowhead's abilities
var arrowDamage = 15
var arrowCooldown = 1.5
var lastArrowTime = 0.0

func _ready():
	# Initialization code

func shoot_arrow():
	if (OS.get_unix_time() - lastArrowTime) >= arrowCooldown:
		# Perform the arrow shooting animation and damage enemies
		lastArrowTime = OS.get_unix_time()

func activate_ability():
	# Implement the Archer Arrowhead's ability logic
	# For example, fire arrows at enemies or apply buffs
	# ...

# You may emit a signal or call a method in RecruitmentManager to handle recruitment
