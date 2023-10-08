																																																																																																																																																																																																																									extends Node2D

# Define variables for recruited heroes and heroines
var recruitedHeroes = []
var recruitedHeroines = []

# Define recruitment cooldowns
var heroRecruitmentCooldown = 10.0
var heroineRecruitmentCooldown = 20.0

func _ready():
	# Initialization code

# Function to recruit a hero
func recruit_hero(hero):
	if !hero.is_queued("activate_ability") and heroRecruitmentCooldown <= 0.0:
		hero.activate_ability()
		recruitedHeroes.append(hero)
		heroRecruitmentCooldown = 10.0  # Set the hero recruitment cooldown

# Function to recruit a heroine
func recruit_heroine(heroine):
	if !heroine.is_queued("activate_ability") and heroineRecruitmentCooldown <= 0.0:
		heroine.activate_ability()
		recruitedHeroines.append(heroine)
		heroineRecruitmentCooldown = 20.0  # Set the heroine recruitment cooldown

# Function to update cooldowns
func _process(delta):
	heroRecruitmentCooldown -= delta
	heroineRecruitmentCooldown -= delta
