extends Area2D


@onready var score_label = %ScoreLabel
@onready var game_state = %GameState


func _on_body_entered(body: Node2D):
	print('entered')
	print(body.name)
	if body.name == 'Ball':
		game_state.score += 1
