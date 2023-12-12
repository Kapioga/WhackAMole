extends Node2D

@onready var pane_panel = $"../Pane Panel"
@onready var ham_visual = $HamVisual


func _ready():
	pass


func _process(_delta) -> void:
	ham_visual.position = get_local_mouse_position()



