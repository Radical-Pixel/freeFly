extends CanvasLayer

onready var Animation = $Control/AnimationPlayer;

var scene : String;

func changeScene (new_scene,anim):
	scene = new_scene
	Animation.play(anim)


func _new_scene():
	get_tree().change_scene(scene)

