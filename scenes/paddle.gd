extends CharacterBody2D

@export var speed: float = 300.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	var direction = Input.get_axis("up", "down")
	if direction:
		velocity.y = direction * speed
	else:
		velocity.y = move_toward(velocity.x, 0, speed)

	move_and_slide()

