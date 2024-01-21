extends Marker2D


@export var ball_scene: PackedScene

@onready var timer = %Timer

signal ball_died()

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start()


func spawn():
	timer.start()


func _on_timer_timeout():
	var new_ball = ball_scene.instantiate()
	new_ball.global_position = self.global_position
	new_ball.died.connect(_on_ball_died)
	self.add_sibling(new_ball)


func _on_ball_died():
	ball_died.emit()
