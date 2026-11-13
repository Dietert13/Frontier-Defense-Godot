extends Node3D

@export var clip_prefix := "Ranger"

@onready var _player := find_children("*", "AnimationPlayer", true, false)[0] as AnimationPlayer
@onready var _muzzle: Marker3D = $ProjectileOrigin
var _last_position: Vector3
var _aim_left := 0.0
var _firing := false


func _ready() -> void:
	_last_position = global_position
	for suffix in ["Idle", "Walk"]:
		_player.get_animation(_clip(suffix)).loop_mode = Animation.LOOP_LINEAR
	_player.animation_finished.connect(_finish_fire)
	_player.play(_clip("Idle"))


func _process(delta: float) -> void:
	_aim_left = maxf(0.0, _aim_left - delta)
	var moving := global_position.distance_squared_to(_last_position) > 0.000004
	_last_position = global_position
	if _firing:
		return
	if not moving and clip_prefix == "Ranger" and _aim_left > 0.0:
		return
	var desired := _clip("Walk" if moving else "Idle")
	if _player.current_animation != desired:
		_player.play(desired, 0.10)


func _clip(suffix: String) -> StringName:
	return StringName(clip_prefix + "_" + suffix)


func fire_at(point: Vector3, interval: float) -> void:
	_firing = true
	_aim_left = interval + 0.08
	if clip_prefix == "Ranger":
		_player.play_section(_clip("Fire"), 0.26, 0.60, 0.035)
		_player.seek(0.26, true)
		_rifle_burst(point)
	else:
		_player.play(_clip("Fire"), 0.04)
		_player.seek(0.0, true)
		get_tree().create_timer(0.23).timeout.connect(_flame_jet.bind(point))


func _finish_fire(_name: StringName) -> void:
	_firing = false
	if clip_prefix == "Ranger" and _aim_left > 0.0:
		_player.play(_clip("Fire"))
		_player.seek(0.26, true)
		_player.pause()


func _rifle_burst(point: Vector3) -> void:
	var origin := _muzzle.global_position
	var direction := origin.direction_to(point)
	if direction.is_zero_approx():
		return
	var side := direction.cross(Vector3.UP)
	for lane in [-1, 0, 1]:
		var beam := BoxMesh.new()
		beam.size = Vector3(0.015, 0.015, 0.27)
		var tracer := _effect(beam, origin + side * lane * 0.035)
		var destination: Vector3 = point + side * lane * 0.14
		tracer.look_at(destination)
		var tween := create_tween()
		tween.tween_property(tracer, "global_position", destination, 0.085)
		tween.tween_callback(tracer.queue_free)
	var bulb := SphereMesh.new()
	bulb.radius = 0.08
	bulb.height = 0.16
	var flash := _effect(bulb, origin)
	get_tree().create_timer(0.055).timeout.connect(flash.queue_free)


func _effect(mesh: Mesh, point: Vector3) -> MeshInstance3D:
	var material := StandardMaterial3D.new()
	material.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	material.albedo_color = Color(1.0, 0.73, 0.25)
	var item := MeshInstance3D.new()
	item.mesh = mesh
	item.material_override = material
	item.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	item.top_level = true
	add_child(item)
	item.global_position = point
	return item


func _flame_jet(point: Vector3) -> void:
	if not is_inside_tree() or not is_visible_in_tree():
		return
	var particles := CPUParticles3D.new()
	particles.top_level = true
	particles.emitting = false
	particles.one_shot = true
	particles.amount = 60
	particles.lifetime = 0.36
	particles.explosiveness = 0.08
	particles.direction = _muzzle.global_position.direction_to(point)
	particles.spread = 12.0
	particles.initial_velocity_min = 3.0
	particles.initial_velocity_max = 7.0
	particles.gravity = Vector3.UP * 1.8
	particles.scale_amount_min = 0.35
	particles.scale_amount_max = 1.0
	var colors := Gradient.new()
	colors.offsets = PackedFloat32Array([0.0, 0.30, 0.68, 1.0])
	colors.colors = PackedColorArray([Color(1, 0.93, 0.62, 1), Color(1, 0.47, 0.08, 0.9),
			Color(0.9, 0.14, 0.025, 0.45), Color(0.45, 0.05, 0.01, 0)])
	particles.color_ramp = colors
	var feather := Gradient.new()
	feather.colors = PackedColorArray([Color.WHITE, Color(1, 1, 1, 0)])
	var texture := GradientTexture2D.new()
	texture.gradient = feather
	texture.fill = GradientTexture2D.FILL_RADIAL
	texture.fill_from = Vector2(0.5, 0.5)
	texture.fill_to = Vector2(1.0, 0.5)
	var material := StandardMaterial3D.new()
	material.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	material.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	material.blend_mode = BaseMaterial3D.BLEND_MODE_ADD
	material.billboard_mode = BaseMaterial3D.BILLBOARD_ENABLED
	material.vertex_color_use_as_albedo = true
	material.albedo_texture = texture
	var quad := QuadMesh.new()
	quad.size = Vector2(0.28, 0.28)
	quad.material = material
	particles.mesh = quad
	particles.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(particles)
	particles.global_position = _muzzle.global_position
	particles.finished.connect(particles.queue_free)
	particles.emitting = true

