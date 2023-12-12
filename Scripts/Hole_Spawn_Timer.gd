extends Timer

const mole_spawn: Resource = preload("res://Scenes/hole.tscn")

@onready var score_label: Label = $"../Score/Score_Label"


var score: int = 0
var mole_load: Node = mole_spawn.instantiate()

func _ready():
	Events.mole_whacked.connect(_on_mole_whacked)

func _on_timeout():
	#randomize()
	#var Mole_Load = Mole_Spawn.instantiate()
	mole_load.position = Vector2(randf_range(150, 500), randf_range(150, 500))
	add_child(mole_load)
	wait_time = randf_range(1,5)


func _on_mole_whacked():
	score += 1
	score_label.text = str(score)
	mole_load.position = Vector2(randf_range(150, 500), randf_range(150, 500))

