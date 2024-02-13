extends Node

var timeLeft : int = 3
var gamePaths = ["res://GAMES/SampleGame/Main.tscn",
		"res://GAMES/SampleGame/Main.tscn",
		"res://GAMES/SampleGame/Main.tscn", 
		"res://GAMES/FlappyBird/main.tscn"]

# Called when the node enters the scene tree for the first time.
func _ready():
	print("startin")
	$Label.text = str(timeLeft)
	$Timer.start()
	#randc_seed(int(OS.get_ticks_msec()))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	print("Timer Stop")
	timeLeft = timeLeft - 1
	
	$Label.text = str(timeLeft)
	if timeLeft == 0:
		#TODO: turn to a list
		get_tree().change_scene_to_file(decideOnAScene())
	
	print("timeLeft: "  + str(timeLeft))
	$Timer.start()

func decideOnAScene():
	var random_index = randi() % gamePaths.size()
	return gamePaths[random_index]
