extends Node2D
const SPEED = 60
var dir = 1

@onready var right: RayCast2D = $Right
@onready var left: RayCast2D = $Left
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += SPEED * dir * delta
	if right.is_colliding():
		dir = -1
		animated_sprite_2d.flip_h = true
	if left.is_colliding():
		dir = 1
		animated_sprite_2d.flip_h = false
