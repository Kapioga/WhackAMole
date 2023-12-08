extends Node2D

signal Touched
@onready var pane_panel = $"../Pane Panel"
@onready var panel = $Panel
@onready var score_label = $"../Score/Score_Label"

var score: int = 0


func _ready():
	pass
	

func _process(_delta):
	pass



#func _on_h_detect_area_entered(_area):
	#panel.modulate = Color(0,1,0,1)
	#score += 1
	#score_label.text = str(score)
	#queue_free()
