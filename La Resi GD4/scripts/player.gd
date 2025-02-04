extends CharacterBody2D

@export var SPEED = 300.0

@onready var idle_timer = $Timer


func _physics_process(delta):
	#Character movement
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	
	if Input.is_action_pressed("run"):
		velocity = direction * SPEED * 1.5
	else:
		velocity = direction * SPEED 
	move_and_slide()

	# Animation handling
	if velocity.x > 0:
		$AnimatedSprite2D.animation = "walk_right"
	elif velocity.x < 0:
		$AnimatedSprite2D.animation = "walk_left"
	elif velocity.y < 0:
		$AnimatedSprite2D.animation = "walk_up"
	elif velocity.y > 0:
		$AnimatedSprite2D.animation = "walk_down"
	else:
		if $AnimatedSprite2D.animation == "walk_right":
			$AnimatedSprite2D.animation = "idle_right"
		elif $AnimatedSprite2D.animation == "walk_left":
			$AnimatedSprite2D.animation = "idle_left"
		elif $AnimatedSprite2D.animation == "walk_up":
			$AnimatedSprite2D.animation = "idle_up"
		elif $AnimatedSprite2D.animation == "walk_down":
			$AnimatedSprite2D.animation = "idle_down"
