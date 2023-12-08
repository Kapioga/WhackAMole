extends Timer

var Mole_Spawn = preload("res://Scenes/hole.tscn")
var score: int = 0
@onready var score_label = $"../Score/Score_Label"
var Mole_Load = Mole_Spawn.instantiate()

func _on_timeout():
	#randomize()
	#var Mole_Load = Mole_Spawn.instantiate()
	Mole_Load.position = Vector2(randf_range(150, 500), randf_range(150, 500))
	add_child(Mole_Load)
	wait_time = randf_range(1,5)

func _on_h_detect_area_entered(area):
	score += 1
	score_label.text = str(score)
	Mole_Load.position = Vector2(randf_range(150, 500), randf_range(150, 500))

