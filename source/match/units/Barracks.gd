extends "res://source/match/units/Structure.gd"

const TECH_LAB_COST := {"resource_a": 3, "resource_b": 1}
const TECH_LAB_TIME := 8.0
const FIREBAT_SCENE := "res://source/match/units/ShockTrooper.tscn"

var tech_lab_ready := false
var tech_lab_remaining := 0.0


func can_start_tech_lab() -> bool:
	return player != null and not is_under_construction() and not tech_lab_ready and (
			tech_lab_remaining <= 0.0 and player.has_resources(TECH_LAB_COST))


func start_tech_lab() -> bool:
	if not can_start_tech_lab():
		return false
	player.subtract_resources(TECH_LAB_COST)
	tech_lab_remaining = TECH_LAB_TIME
	return true


func _process(delta: float) -> void:
	if tech_lab_remaining <= 0.0:
		return
	tech_lab_remaining = maxf(0.0, tech_lab_remaining - delta)
	if tech_lab_remaining == 0.0:
		tech_lab_ready = true
		$Geometry/TechLabModule.show()
