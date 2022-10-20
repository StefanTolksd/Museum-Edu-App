extends TextureButton


export (String) var info_title = TextEdit.new()
export (String) var info_text = TextEdit.new()
export (String) var popup_title = TextEdit.new()
export (NodePath) var TargetMesh
export (NodePath) var InfoTitle
export (NodePath) var InfoText
export (NodePath) var Title

func is_radio():
	pass
	
func _ready():
	pass

func _on_TextureButton_toggled(toggled):
	if toggled == true:
		get_node(InfoTitle).set_text(str(info_title))
		get_node(InfoText).set_text(str(info_text))
		get_node(Title).set_text(str(popup_title))
		get_node(TargetMesh).visible = true
	else:
		get_node(TargetMesh).visible = false
	
