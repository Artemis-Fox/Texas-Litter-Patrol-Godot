extends KinematicBody2D


var MoveSPD = 200
var velocity = Vector2()

func PlayerMovement():
	velocity = Vector2()
	if Input.is_action_pressed("Left"):
		velocity.x -= 1
	if Input.is_action_pressed("Right"):
		velocity.x += 1
	velocity = velocity.normalized() * MoveSPD

func _physics_process(delta):
	PlayerMovement()
	velocity = move_and_slide(velocity)
