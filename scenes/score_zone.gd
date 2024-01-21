extends Area2D

@export_range(1,2) var zone: int = 1


func _on_body_entered(body: Node2D):
	if body.name == 'Ball':
		body.die(zone)
