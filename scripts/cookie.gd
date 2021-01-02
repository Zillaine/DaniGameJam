extends RigidBody2D

var direction = Vector2.RIGHT
var speed = 200
var damage
var rot

func _ready():
	pass # Replace with function body.

func _process(delta):
	position += direction * speed * delta

	rot = $Sprite.rotation_degrees
	rot += 5
	if rot >= 360:
		rot = 0
	$Sprite.rotation_degrees = rot
