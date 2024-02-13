extends Node
var zcount : int = 5
var xcount : int = 5
var ccount : int = 5
var vcount : int = 5

func _ready():
	$Zlabel.text = str(zcount)
	$Xlabel.text = str(xcount)
	$Vlabel.text = str(vcount)
	$Clabel.text = str(ccount)

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_Z:
			zcount = zcount-1
			$Zlabel.text = str(zcount)
		if event.keycode == KEY_X:
			xcount = xcount-1
			$Xlabel.text = str(xcount)
		if event.keycode == KEY_C:
			ccount = ccount-1
			$Clabel.text = str(ccount)
		if event.keycode == KEY_V:
			vcount = vcount-1 #what am i doing
			$Vlabel.text = str(vcount)
			
	if zcount == 0 or xcount == 0 or ccount==0 or vcount==0:
		get_tree().change_scene_to_file("res://FRAMEWORK/Director.tscn")
