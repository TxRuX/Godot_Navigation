extends CharacterBody2D


const SPEED = 300.0
var dir : Vector2


func _physics_process(delta):
	velocity = dir * SPEED
	move_and_slide()
	
func _unhandled_input(_event : InputEvent):
	dir.x = Input.get_axis("ui_left", "ui_right")
	dir.y = Input.get_axis("ui_up", "ui_down")
	dir = dir.normalized()
