extends StaticBody2D

@onready var player = $"../../Player"
@onready var static_people = $".."

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.animation = "idle"
	$AnimatedSprite2D.play()

func _process(delta):
	var player_y = player.position.y
	var static_person_y = static_people.position.y
	
	if player_y > static_person_y:
		static_people.z_index = 0
		#print(0)
	else:
		static_people.z_index = 2
		
		#print(1)
