extends Control

export (float) var menu_size = 0.92
export (float) var lerp_speed = 0.2

var _popped_up = false
var _up_anchor = Vector2(1-menu_size,1)
var _down_anchor = Vector2(1,1+menu_size)
var _target_anchor = _down_anchor

func is_radio():
	pass
	
func _ready():
	pass

func _process(_delta):
	anchor_top = lerp(anchor_top,_target_anchor.x,lerp_speed)
	anchor_bottom = lerp(anchor_bottom,_target_anchor.y,lerp_speed)
	pass

func _on_RadioButton_toggled(toggled,extra_arg_0: String,extra_arg_1: String) -> void:
	if !_popped_up and toggled:
		get_node(extra_arg_0).visible = true
		get_node(extra_arg_1).visible = false
		_target_anchor = _up_anchor
	else:
		_target_anchor = _down_anchor
	_popped_up = !_popped_up
