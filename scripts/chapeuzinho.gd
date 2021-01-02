extends "enemy.gd"

var timer = 2

func _ready():
	$AttackTimer.start(timer)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
