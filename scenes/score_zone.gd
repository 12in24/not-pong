extends Area2D


@onready var score_label = %ScoreLabel
@onready var game_manager = %GameManager


func _on_body_entered(body: Node2D):
	if body.name == 'Ball':
		game_manager.score += 1
		body.die()
