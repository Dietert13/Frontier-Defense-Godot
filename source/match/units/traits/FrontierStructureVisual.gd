extends Node3D

@export var landed_clip: StringName


func _ready() -> void:
	for item in find_children("*", "AnimationPlayer", true, false):
		var player := item as AnimationPlayer
		if player.has_animation(landed_clip):
			player.play(landed_clip)
			player.advance(0.0)
			player.pause()
