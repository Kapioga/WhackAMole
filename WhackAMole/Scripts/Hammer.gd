extends Node2D

@onready var h_detect = $HDetect
@onready var pane_panel = $"../Pane Panel"



func _ready():
	pass


func _process(_delta):
	hammer_pos()
	
func hammer_pos():
	h_detect.position.x = get_local_mouse_position().x
	h_detect.position.y = get_local_mouse_position().y
