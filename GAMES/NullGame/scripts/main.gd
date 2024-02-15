extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	$BackToDirectorTimer.connect("timeout", _on_timer_timeout)
	new_game()

func new_game():
	start_game()
	
func _input(event):
	if event is InputEventKey and event.pressed:
		stop_game()

func start_game():
	$Label.text = "Don't press the button."

func stop_game():
	$Label.text = "You pressed the button. Game Over."
	$BackToDirectorTimer.start()
	
func _on_timer_timeout():
	get_tree().change_scene_to_file("res://FRAMEWORK/Director.tscn")
