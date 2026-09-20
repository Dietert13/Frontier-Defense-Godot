# Constants shared between MatchConstants.gd and the unit constant files split out of it.
class Navigation:
	enum Domain { AIR, TERRAIN }

	const DOMAIN_TO_GROUP_MAPPING = {
		Domain.AIR: "air_navigation_input",
		Domain.TERRAIN: "terrain_navigation_input",
	}


class Repair:
	const HITPOINTS_PER_SECOND = 2.0


class Capture:
	const ENGINEER_CAPTURE_TIME_SECONDS = 1.2
	const SABOTEUR_RESOURCE_STEAL_RATIO = 0.35
	const SABOTEUR_RESOURCE_STEAL_CAP = 8
	const SABOTEUR_PRODUCTION_VETERANCY_RANK = 1
	const SABOTEUR_POWER_SABOTAGE_DURATION_SECONDS = 10.0
	const INFILTRATION_RESOURCE_TARGETS = [
		"res://source/match/units/CommandCenter.tscn",
		"res://source/match/units/Refinery.tscn",
		"res://source/match/units/OrePurifier.tscn",
	]
	const INFILTRATION_POWER_SABOTAGE_TARGETS = [
		"res://source/match/units/PowerReactor.tscn",
		"res://source/match/units/AdvancedReactorPlant.tscn",
	]
	const INFILTRATION_PRODUCTION_VETERANCY_TARGETS = {
		"res://source/match/units/Barracks.tscn": "res://source/match/units/Barracks.tscn",
		"res://source/match/units/VehicleFactory.tscn":
		"res://source/match/units/VehicleFactory.tscn",
		"res://source/match/units/AircraftFactory.tscn":
		"res://source/match/units/AircraftFactory.tscn",
	}
