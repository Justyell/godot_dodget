extends RigidBody2D

signal Visibility

export (int) var MIN_SPEED # minimum speed range
export (int) var MAX_SPEED # maximum speed range

var mob_types = ["walk", "swim", "fly"]

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Visibility_screen_exited():
	queue_free()
