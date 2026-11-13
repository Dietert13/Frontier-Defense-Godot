extends "res://source/match/units/Unit.gd"

var resource_a = 0
var resource_b = 0
var resources_max = null


func can_construct_structures():
	return true


func can_collect_resources():
	return resources_max != null and resources_max > 0


func is_full():
	assert(resource_a + resource_b <= resources_max, "worker capacity was exceeded somehow")
	return resource_a + resource_b == resources_max

var _visual_player: AnimationPlayer
var _previous_position: Vector3


func _ready():
	var visuals := $Geometry.find_children("*", "AnimationPlayer", true, false)
	if not visuals.is_empty():
		_visual_player = visuals[0] as AnimationPlayer
		for clip in [&"SCV_Idle", &"SCV_Walk", &"SCV_Mine"]:
			_visual_player.get_animation(clip).loop_mode = Animation.LOOP_LINEAR
		_visual_player.play(&"SCV_Idle")
	_previous_position = global_position
	await super()


func _process(_delta):
	if _visual_player == null:
		return
	var moving := global_position.distance_squared_to(_previous_position) > 0.000004
	_previous_position = global_position
	var clip := &"SCV_Walk" if moving else &"SCV_Idle"
	if not moving and action != null:
		for child in action.get_children():
			if child.get_script() != null and child.get_script().resource_path.ends_with("CollectingResourcesWhileInRange.gd"):
				clip = &"SCV_Mine"
				break
	if _visual_player.current_animation != clip:
		_visual_player.play(clip, 0.12)
