extends CharacterBody2D


@export_range(1, 2) var player: int = 1

var input_up: String
var input_down: String
var input_clockwise: String
var input_counterclockwise: String


const SPEED = 400.0
const OMEGA = 5.0


func _ready():
	if player == 1:
		input_up = "player1_up"
		input_down = "player1_down"
		input_clockwise = "player1_clockwise"
		input_counterclockwise = "player1_counterclockwise"
	else:
		input_up = "player2_up"
		input_down = "player2_down"
		input_clockwise = "player2_clockwise"
		input_counterclockwise = "player2_counterclockwise"


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis(input_up, input_down)
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
	var rotation_dir = Input.get_axis(input_counterclockwise, input_clockwise)
	
	if rotation:
		self.rotation += OMEGA * rotation_dir * delta

	move_and_collide(delta * velocity)
