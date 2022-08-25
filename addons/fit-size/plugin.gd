tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("FitSize", "Control", preload("main.gd"), Texture.new())

func _exit_tree():
	remove_custom_type("FitSize")

