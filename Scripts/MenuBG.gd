extends Control

export (StreamTexture) var bkg_tex = StreamTexture.new()
export (NodePath) var WorldEnvironment

func is_radio():
	pass
	
func _ready():
	pass
	
func _on_RadioButton_toggled(toggled):
	if toggled == true:
		get_node(WorldEnvironment).environment.background_sky.set_panorama(bkg_tex)
