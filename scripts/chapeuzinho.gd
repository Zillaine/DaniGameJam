extends "enemy.gd"

var cookie_scene = preload("res://scenes/Cookie.tscn")

var timer = 2

func _ready():
	$AttackTimer.start(timer)

func _on_AttackTimer_timeout():
	var cookie = cookie_scene.instance()
	cookie.position = position
	cookie.direction = (get_parent().get_node('Player').position - cookie.position).normalized()
	get_parent().add_child(cookie)
