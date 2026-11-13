extends "res://source/match/MatchCommonConstants.gd"

const OWNED_PLAYER_CIRCLE_COLOR = Color.GREEN
const ADVERSARY_PLAYER_CIRCLE_COLOR = Color.RED
const RESOURCE_CIRCLE_COLOR = Color.YELLOW
const DEFAULT_CIRCLE_COLOR = Color.WHITE
const MAPS = {
	"res://source/match/maps/PlainAndSimple.tscn":
	{
		"name": "Plain & Simple",
		"name_key": "MAP_NAME_PLAIN_AND_SIMPLE",
		"players": 4,
		"size": Vector2i(50, 50),
	},
	"res://source/match/maps/FourCorners.tscn":
	{
		"name": "Four Corners",
		"name_key": "MAP_NAME_FOUR_CORNERS",
		"players": 4,
		"size": Vector2i(72, 72),
	},
	"res://source/match/maps/TechDivide.tscn":
	{
		"name": "Tech Divide",
		"name_key": "MAP_NAME_TECH_DIVIDE",
		"players": 6,
		"size": Vector2i(84, 84),
	},
	"res://source/match/maps/BigArena.tscn":
	{
		"name": "Big Arena",
		"name_key": "MAP_NAME_BIG_ARENA",
		"players": 8,
		"size": Vector2i(100, 100),
	},
}


class Air:
	const Y = 1.5
	const PLANE = Plane(Vector3.UP, Y)

	class Navmesh:
		const CELL_SIZE = 0.4
		const CELL_HEIGHT = 0.4
		const MAX_AGENT_RADIUS = 0.8


class Terrain:
	const PLANE = Plane(Vector3.UP, 0)

	class Navmesh:
		const CELL_SIZE = 0.3
		const CELL_HEIGHT = 0.3
		const MAX_AGENT_RADIUS = 0.9  # max radius of movable units


class Resources:
	const ORE_PURIFIER_STRUCTURE_PATH = "res://source/match/units/OrePurifier.tscn"
	const ORE_PURIFIER_BONUS_RATIO = 0.25

	class A:
		const COLOR = Color.BLUE
		const MATERIAL_PATH = "res://source/match/resources/materials/resource_a.material.tres"
		const COLLECTING_TIME_S = 1.0

	class B:
		const COLOR = Color.RED
		const MATERIAL_PATH = "res://source/match/resources/materials/resource_b.material.tres"
		const COLLECTING_TIME_S = 2.0


class Power:
	const LOW_POWER_PRODUCTION_SPEED_MULTIPLIER = 0.5
	const AI_TARGET_RESERVE = 8


class Structure:
	const SELL_REFUND_RATIO = 0.5
	const MANUAL_REPAIR_COST_RATIO = 0.5
	const MANUAL_REPAIR_HITPOINTS_PER_SECOND = 3.0
	const MANUAL_REPAIR_TICK_SECONDS = 0.2
	const AI_REPAIR_MIN_MISSING_HITPOINT_RATIO = 0.25
	const AI_REPAIR_MAX_STARTS_PER_REFRESH = 2


class SupportPowers:
	const RADAR_SWEEP = "radar_sweep"
	const ORBITAL_STRIKE = "orbital_strike"
	const EMP_PULSE = "emp_pulse"
	const CHRONO_RELAY = "chrono_relay"
	const SHIELD_OVERDRIVE = "shield_overdrive"
	const NANITE_REPAIR_SWARM = "nanite_repair_swarm"
	const WEATHER_STORM = "weather_storm"
	const STRATEGIC_MISSILE = "strategic_missile"
	const PARADROP = "paradrop"
	const DEFINITIONS = {
		"radar_sweep":
		{
			"name_key": "RADAR_SWEEP",
			"description_key": "RADAR_SWEEP_DESCRIPTION",
			"requirements": ["res://source/match/units/RadarUplink.tscn"],
			"requires_power": true,
			"cooldown": 18.0,
			"radius": 12.0,
			"duration": 8.0,
		},
		"orbital_strike":
		{
			"name_key": "ORBITAL_STRIKE",
			"description_key": "ORBITAL_STRIKE_DESCRIPTION",
			"requirements": ["res://source/match/units/TechLab.tscn"],
			"requires_power": true,
			"cooldown": 45.0,
			"impact_delay": 0.7,
			"radius": 3.4,
			"damage": 8.0,
		},
		"emp_pulse":
		{
			"name_key": "EMP_PULSE",
			"description_key": "EMP_PULSE_DESCRIPTION",
			"requirements": ["res://source/match/units/RoboticsBay.tscn"],
			"requires_power": true,
			"cooldown": 36.0,
			"radius": 4.8,
			"duration": 5.0,
		},
		"chrono_relay":
		{
			"name_key": "CHRONO_RELAY",
			"description_key": "CHRONO_RELAY_DESCRIPTION",
			"requirements": ["res://source/match/units/TechLab.tscn"],
			"requires_power": true,
			"cooldown": 38.0,
			"radius": 4.6,
			"duration": 7.0,
			"speed_multiplier": 1.75,
		},
		"shield_overdrive":
		{
			"name_key": "SHIELD_OVERDRIVE",
			"description_key": "SHIELD_OVERDRIVE_DESCRIPTION",
			"requirements": ["res://source/match/units/TechLab.tscn"],
			"requires_power": true,
			"cooldown": 55.0,
			"radius": 4.8,
			"duration": 8.0,
			"damage_multiplier": 0.25,
		},
		"nanite_repair_swarm":
		{
			"name_key": "NANITE_REPAIR_SWARM",
			"description_key": "NANITE_REPAIR_SWARM_DESCRIPTION",
			"requirements": ["res://source/match/units/RoboticsBay.tscn"],
			"requires_power": true,
			"cooldown": 42.0,
			"radius": 5.2,
			"healing": 10.0,
		},
		"weather_storm":
		{
			"name_key": "WEATHER_STORM",
			"description_key": "WEATHER_STORM_DESCRIPTION",
			"requirements": ["res://source/match/units/WeatherControlSpire.tscn"],
			"requires_power": true,
			"superweapon": true,
			"initial_cooldown": 90.0,
			"cooldown": 90.0,
			"impact_delay": 1.8,
			"radius": 6.4,
			"damage": 12.0,
		},
		"strategic_missile":
		{
			"name_key": "STRATEGIC_MISSILE",
			"description_key": "STRATEGIC_MISSILE_DESCRIPTION",
			"requirements": ["res://source/match/units/WeatherControlSpire.tscn"],
			"requires_power": true,
			"superweapon": true,
			"initial_cooldown": 105.0,
			"cooldown": 105.0,
			"impact_delay": 1.4,
			"radius": 4.8,
			"damage": 20.0,
		},
		"paradrop":
		{
			"name_key": "PARADROP",
			"description_key": "PARADROP_DESCRIPTION",
			"requirements": ["res://source/match/units/TechAirport.tscn"],
			"requires_power": false,
			"cooldown": 52.0,
			"impact_delay": 1.1,
			"radius": 2.4,
			"unit_paths":
			[
				"res://source/match/units/LightRifleInfantry.tscn",
				"res://source/match/units/LightRifleInfantry.tscn",
				"res://source/match/units/RocketInfantry.tscn",
			],
		},
	}


class BattleEventPing:
	const GENERIC = "generic"
	const SUPPORT_POWER = "support_power"
	const ENEMY_SUPPORT_POWER = "enemy_support_power"
	const ENEMY_SUPERWEAPON = "enemy_superweapon"


class Veterancy:
	const MAX_RANK = 2
	const KILLS_BY_RANK = [0, 2, 5]
	const DAMAGE_MULTIPLIER_BY_RANK = [1.0, 1.25, 1.5]
	const HP_MULTIPLIER_BY_RANK = [1.0, 1.2, 1.5]
	const RANGE_BONUS_BY_RANK = [0.0, 0.5, 1.0]
	const SIGHT_BONUS_BY_RANK = [0.0, 1.0, 2.0]
	const ELITE_REGEN_HITPOINTS_PER_SECOND = 1.0
	const ELITE_REGEN_TICK_SECONDS = 0.5


class Units:
	extends "res://source/match/UnitConstants.gd"


class VoiceNarrator:
	enum Events {
		MATCH_STARTED,
		MATCH_ABORTED,
		MATCH_FINISHED_WITH_VICTORY,
		MATCH_FINISHED_WITH_DEFEAT,
		BASE_UNDER_ATTACK,
		UNIT_UNDER_ATTACK,
		UNIT_LOST,
		UNIT_PRODUCTION_STARTED,
		UNIT_PRODUCTION_FINISHED,
		UNIT_CONSTRUCTION_FINISHED,
		UNIT_HELLO,
		UNIT_ACK_1,
		UNIT_ACK_2,
		NOT_ENOUGH_RESOURCES,
		SUPPORT_POWER_READY,
		SUPPORT_POWER_FIRED,
		ENEMY_SUPPORT_POWER_FIRED,
		ENEMY_SUPERWEAPON_READY,
		ENEMY_SUPERWEAPON_LAUNCHED,
	}

	const UnitReadyVoice = preload(
		"res://assets/voice/english/ttsmaker-com-148-alayna-us/unit_ready.ogg"
	)
	const AcknowledgedVoice = preload(
		"res://assets/voice/english/ttsmaker-com-2704-jackson-us/acknowledged.ogg"
	)
	const UnitUnderAttackVoice = preload(
		"res://assets/voice/english/ttsmaker-com-148-alayna-us/unit_under_attack.ogg"
	)
	const BaseUnderAttackVoice = preload(
		"res://assets/voice/english/ttsmaker-com-148-alayna-us/your_base_is_under_attack.ogg"
	)
	const EVENT_TO_ASSET_MAPPING = {
		Events.MATCH_STARTED:
		preload("res://assets/voice/english/ttsmaker-com-148-alayna-us/battle_control_online.ogg"),
		Events.MATCH_ABORTED:
		preload("res://assets/voice/english/ttsmaker-com-148-alayna-us/battle_control_offline.ogg"),
		Events.MATCH_FINISHED_WITH_VICTORY:
		preload("res://assets/voice/english/ttsmaker-com-148-alayna-us/you_are_victorious.ogg"),
		Events.MATCH_FINISHED_WITH_DEFEAT:
		preload("res://assets/voice/english/ttsmaker-com-148-alayna-us/you_have_lost.ogg"),
		Events.BASE_UNDER_ATTACK: BaseUnderAttackVoice,
		Events.UNIT_UNDER_ATTACK: UnitUnderAttackVoice,
		Events.UNIT_LOST:
		preload("res://assets/voice/english/ttsmaker-com-148-alayna-us/unit_lost.ogg"),
		Events.UNIT_PRODUCTION_STARTED:
		preload("res://assets/voice/english/ttsmaker-com-148-alayna-us/training.ogg"),
		Events.UNIT_PRODUCTION_FINISHED: UnitReadyVoice,
		Events.UNIT_CONSTRUCTION_FINISHED:
		preload("res://assets/voice/english/ttsmaker-com-148-alayna-us/construction_complete.ogg"),
		Events.UNIT_HELLO:
		preload("res://assets/voice/english/ttsmaker-com-2704-jackson-us/sir.ogg"),
		Events.UNIT_ACK_1:
		preload("res://assets/voice/english/ttsmaker-com-2704-jackson-us/yes_sir.ogg"),
		Events.UNIT_ACK_2: AcknowledgedVoice,
		Events.NOT_ENOUGH_RESOURCES:
		preload("res://assets/voice/english/ttsmaker-com-148-alayna-us/not_enough_resources.ogg"),
		Events.SUPPORT_POWER_READY: UnitReadyVoice,
		Events.SUPPORT_POWER_FIRED: AcknowledgedVoice,
		Events.ENEMY_SUPPORT_POWER_FIRED: UnitUnderAttackVoice,
		Events.ENEMY_SUPERWEAPON_READY: BaseUnderAttackVoice,
		Events.ENEMY_SUPERWEAPON_LAUNCHED: BaseUnderAttackVoice,
	}


