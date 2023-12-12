extends Node2D



func _on_gui_input_gui_input(event):
	if is_left_clicked(event):
		Events.emit_signal("mole_whacked")
	

func is_left_clicked(event: InputEvent) -> bool:
	if not event is InputEventMouseButton: return false
	if not event.pressed: return false
	if not event.button_index == MOUSE_BUTTON_LEFT: return false
	return true
