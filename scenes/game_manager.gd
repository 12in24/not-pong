extends Node

var player_1_score: int = 0
var player_2_score: int = 0

@onready var spawner = %Spawner
@onready var game_over_label = %GameOverLabel
@onready var new_game_button = %NewGameButton


func _on_spawner_ball_died(zone: int):
	if zone == 1:
		player_1_score+=1
	else:
		player_2_score+=1
		
	if player_1_score >= 3:
		end_game("Player 1 wins!")
	elif player_2_score >= 3:
		end_game("Player 2 wins!")
	else:
		spawner.spawn()


func end_game(text: String):
	game_over_label.text = text
	game_over_label.visible = true
	new_game_button.visible = true


func reset():
	player_1_score = 0
	player_2_score = 0
	
	game_over_label.visible = false
	new_game_button.visible = false
	
	spawner.spawn()
