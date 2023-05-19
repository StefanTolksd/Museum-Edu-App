extends Control

export (float) var menu_size = 0.95
export (float) var lerp_speed = 0.2

var popped_up = false
var up_anchor = Vector2(0,1)
var down_anchor = Vector2(1,menu_size)
var target_anchor = down_anchor

func is_radio():
	pass
	
func _ready():
	pass

func _process(delta):
	anchor_top = lerp(anchor_top,target_anchor.x,lerp_speed)
	anchor_bottom = lerp(anchor_bottom,target_anchor.y,lerp_speed)
	pass

func _on_RadioButton_toggled(toggled,extra_arg_0: String,extra_arg_1: String) -> void:
	if !popped_up and toggled:
		get_node(extra_arg_0).visible = true
		get_node(extra_arg_1).visible = false
		target_anchor = up_anchor
	else:
		target_anchor = down_anchor
	popped_up = !popped_up
