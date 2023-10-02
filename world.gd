extends Node3D

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(_delta) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _unhandled_input(event: InputEvent) -> void:
	if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED: return
	
	if event is InputEventMouseButton and \
	(event as InputEventMouseButton).button_index == 1:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
