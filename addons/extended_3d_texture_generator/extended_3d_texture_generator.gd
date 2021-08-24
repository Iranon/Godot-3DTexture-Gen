tool
extends EditorPlugin

#- The origin of this script can be found at:
#	https://github.com/SIsilicon/Godot-Volumetrics-Plugin

const folder = "res://addons/extended_3d_texture_generator/"

var extended_texture_3d_creator : Control

func _ready() -> void :
	extended_texture_3d_creator = load(folder + "tool/extended_texture_3d_creator.tscn").instance()
	extended_texture_3d_creator.editor_file_system = get_editor_interface().get_resource_filesystem()
	get_editor_interface().get_base_control().add_child(extended_texture_3d_creator)
	add_tool_menu_item("Create 3D Texture...", extended_texture_3d_creator, "popup_centered_ratio", 0.0)

#func _enter_tree():
#	pass


func _exit_tree():
	remove_tool_menu_item("Create 3D Texture...")
	extended_texture_3d_creator.queue_free()
