extends "res://source/match/MatchCommonConstants.gd"

const DEFAULT_PROPERTIES = {
	"res://source/match/units/Drone.tscn":
	{
		"sight_range": 10.0,
		"hp": 6,
		"hp_max": 6,
	},
	"res://source/match/units/Worker.tscn":
	{
		"sight_range": 5.0,
		"hp": 6,
		"hp_max": 6,
		"resources_max": 2,
	},
	"res://source/match/units/LandMine.tscn":
	{
		"sight_range": 1.0,
		"hp": 1,
		"hp_max": 1,
		"mine_damage": 4.0,
		"trigger_radius": 0.9,
		"blast_radius": 1.5,
		"arming_delay": 0.25,
	},
	"res://source/match/units/OreHarvester.tscn":
	{
		"sight_range": 7.0,
		"hp": 12,
		"hp_max": 12,
		"resources_max": 6,
	},
	"res://source/match/units/MobileConstructionVehicle.tscn":
	{
		"sight_range": 8.5,
		"hp": 16,
		"hp_max": 16,
	},
	"res://source/match/units/Helicopter.tscn":
	{
		"sight_range": 8.0,
		"hp": 10,
		"hp_max": 10,
		"attack_damage": 1,
		"attack_interval": 1.0,
		"attack_range": 5.0,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
	},
	"res://source/match/units/InterceptorVTOL.tscn":
	{
		"sight_range": 12.0,
		"hp": 9,
		"hp_max": 9,
		"attack_damage": 2,
		"attack_interval": 0.45,
		"attack_range": 7.5,
		"attack_domains": [Navigation.Domain.AIR],
	},
	"res://source/match/units/Tank.tscn":
	{
		"sight_range": 8.0,
		"hp": 10,
		"hp_max": 10,
		"attack_damage": 2,
		"attack_interval": 0.75,
		"attack_range": 5.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/LightRifleInfantry.tscn":
	{
		"sight_range": 7.0,
		"hp": 4,
		"hp_max": 4,
		"attack_damage": 1,
		"attack_interval": 0.9,
		"attack_range": 4.5,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/RocketInfantry.tscn":
	{
		"sight_range": 8.0,
		"hp": 5,
		"hp_max": 5,
		"attack_damage": 2,
		"attack_interval": 1.6,
		"attack_range": 6.0,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
	},
	"res://source/match/units/FieldMedic.tscn":
	{
		"sight_range": 7.0,
		"hp": 5,
		"hp_max": 5,
		"repair_rate": Repair.HITPOINTS_PER_SECOND * 0.85,
		"repair_radius": 3.75,
	},
	"res://source/match/units/ShieldTrooper.tscn":
	{
		"sight_range": 7.0,
		"hp": 9,
		"hp_max": 9,
		"attack_damage": 1,
		"attack_interval": 0.85,
		"attack_range": 4.2,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/FlakRocketTeam.tscn":
	{
		"sight_range": 9.0,
		"hp": 6,
		"hp_max": 6,
		"attack_damage": 3,
		"attack_interval": 1.25,
		"attack_range": 7.0,
		"attack_domains": [Navigation.Domain.AIR],
		"splash_radius": 1.2,
		"splash_damage_multiplier": 0.45,
	},
	"res://source/match/units/FlakRocketTeamMk2.tscn":
	{
		"sight_range": 10.5,
		"hp": 7,
		"hp_max": 7,
		"attack_damage": 4,
		"attack_interval": 1.35,
		"attack_range": 8.2,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
		"splash_radius": 1.5,
		"splash_damage_multiplier": 0.55,
	},
	"res://source/match/units/HeavyMachinegunTrooper.tscn":
	{
		"sight_range": 7.5,
		"hp": 7,
		"hp_max": 7,
		"attack_damage": 1,
		"attack_interval": 0.35,
		"attack_range": 4.5,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/ShockTrooper.tscn":
	{
		"sight_range": 8.0,
		"hp": 6,
		"hp_max": 6,
		"attack_damage": 3,
		"attack_interval": 1.0,
		"attack_range": 4.8,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/GrenadierTrooper.tscn":
	{
		"sight_range": 7.5,
		"hp": 5,
		"hp_max": 5,
		"attack_damage": 2,
		"attack_interval": 1.7,
		"attack_range": 5.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 1.4,
		"splash_damage_multiplier": 0.55,
	},
	"res://source/match/units/MortarTeam.tscn":
	{
		"sight_range": 8.5,
		"hp": 5,
		"hp_max": 5,
		"attack_damage": 3,
		"attack_interval": 2.2,
		"attack_range": 7.2,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 1.8,
		"splash_damage_multiplier": 0.6,
	},
	"res://source/match/units/CryoSprayer.tscn":
	{
		"sight_range": 7.5,
		"hp": 6,
		"hp_max": 6,
		"attack_damage": 1,
		"attack_interval": 0.45,
		"attack_range": 3.2,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 1.8,
		"splash_damage_multiplier": 0.45,
	},
	"res://source/match/units/SniperScout.tscn":
	{
		"sight_range": 11.0,
		"hp": 4,
		"hp_max": 4,
		"attack_damage": 4,
		"attack_interval": 2.3,
		"attack_range": 8.5,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/RailSniperTeam.tscn":
	{
		"sight_range": 12.5,
		"hp": 6,
		"hp_max": 6,
		"attack_damage": 6,
		"attack_interval": 2.8,
		"attack_range": 10.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/PhaseSaboteur.tscn":
	{
		"sight_range": 9.0,
		"hp": 5,
		"hp_max": 5,
		"attack_damage": 2,
		"attack_interval": 1.2,
		"attack_range": 4.2,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"structure_damage_multiplier": 3.0,
	},
	"res://source/match/units/SaboteurInfiltrator.tscn":
	{
		"sight_range": 10.0,
		"hp": 6,
		"hp_max": 6,
		"attack_damage": 2,
		"attack_interval": 0.9,
		"attack_range": 4.5,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"structure_damage_multiplier": 4.0,
		"capture_time": Capture.ENGINEER_CAPTURE_TIME_SECONDS * 2.0,
		"infiltration_resource_steal_ratio": Capture.SABOTEUR_RESOURCE_STEAL_RATIO,
		"infiltration_resource_steal_cap": Capture.SABOTEUR_RESOURCE_STEAL_CAP,
		"infiltration_production_veterancy_rank": Capture.SABOTEUR_PRODUCTION_VETERANCY_RANK,
		"infiltration_power_sabotage_duration": Capture.SABOTEUR_POWER_SABOTAGE_DURATION_SECONDS,
	},
	"res://source/match/units/PulseRifleCommando.tscn":
	{
		"sight_range": 9.0,
		"hp": 8,
		"hp_max": 8,
		"attack_damage": 2,
		"attack_interval": 0.55,
		"attack_range": 5.5,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
	},
	"res://source/match/units/TacticalOfficer.tscn":
	{
		"sight_range": 12.0,
		"hp": 6,
		"hp_max": 6,
		"attack_damage": 2,
		"attack_interval": 0.8,
		"attack_range": 6.2,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
	},
	"res://source/match/units/ScoutRover.tscn":
	{
		"sight_range": 12.0,
		"hp": 5,
		"hp_max": 5,
		"attack_damage": 1,
		"attack_interval": 0.8,
		"attack_range": 4.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/MirageScoutTank.tscn":
	{
		"sight_range": 14.0,
		"hp": 8,
		"hp_max": 8,
		"attack_damage": 1,
		"attack_interval": 0.6,
		"attack_range": 4.8,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/FlameAssaultBuggy.tscn":
	{
		"sight_range": 8.0,
		"hp": 7,
		"hp_max": 7,
		"attack_damage": 1,
		"attack_interval": 0.35,
		"attack_range": 3.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/DroneMineLayer.tscn":
	{
		"sight_range": 9.0,
		"hp": 8,
		"hp_max": 8,
		"mine_damage": 4.0,
		"mine_deploy_interval": 2.2,
		"mine_deploy_radius": 1.1,
		"mine_spacing": 1.15,
		"mine_limit": 4,
	},
	"res://source/match/units/TeslaCrawlerMk2.tscn":
	{
		"sight_range": 8.5,
		"hp": 12,
		"hp_max": 12,
		"attack_damage": 2,
		"attack_interval": 0.65,
		"attack_range": 3.8,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 1.5,
		"splash_damage_multiplier": 0.5,
		"structure_damage_multiplier": 1.2,
	},
	"res://source/match/units/RocketTrooperRobot.tscn":
	{
		"sight_range": 8.0,
		"hp": 7,
		"hp_max": 7,
		"attack_damage": 2,
		"attack_interval": 1.4,
		"attack_range": 5.5,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
	},
	"res://source/match/units/JammerVehicle.tscn":
	{
		"sight_range": 14.0,
		"hp": 8,
		"hp_max": 8,
		"attack_damage": 1,
		"attack_interval": 1.0,
		"attack_range": 6.0,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
	},
	"res://source/match/units/AntiAirWalker.tscn":
	{
		"sight_range": 9.0,
		"hp": 9,
		"hp_max": 9,
		"attack_damage": 2,
		"attack_interval": 0.8,
		"attack_range": 7.5,
		"attack_domains": [Navigation.Domain.AIR],
	},
	"res://source/match/units/FlakHoverTank.tscn":
	{
		"sight_range": 10.0,
		"hp": 10,
		"hp_max": 10,
		"attack_damage": 2,
		"attack_interval": 0.55,
		"attack_range": 7.5,
		"attack_domains": [Navigation.Domain.AIR],
	},
	"res://source/match/units/MobileRepairCrawler.tscn":
	{
		"sight_range": 9.0,
		"hp": 9,
		"hp_max": 9,
		"repair_rate": Repair.HITPOINTS_PER_SECOND * 1.25,
		"repair_radius": 4.0,
	},
	"res://source/match/units/MobileShieldProjector.tscn":
	{
		"sight_range": 9.5,
		"hp": 10,
		"hp_max": 10,
		"support_shield_radius": 4.0,
		"support_shield_duration": 0.7,
		"support_shield_damage_multiplier": 0.55,
	},
	"res://source/match/units/ModularMissileCarrier.tscn":
	{
		"sight_range": 10.0,
		"hp": 10,
		"hp_max": 10,
		"attack_damage": 3,
		"attack_interval": 1.6,
		"attack_range": 8.0,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
		"splash_radius": 1.6,
		"splash_damage_multiplier": 0.45,
	},
	"res://source/match/units/LongbowMissileCrawler.tscn":
	{
		"sight_range": 11.0,
		"hp": 12,
		"hp_max": 12,
		"attack_damage": 4,
		"attack_interval": 1.8,
		"attack_range": 9.0,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
		"splash_radius": 1.7,
		"splash_damage_multiplier": 0.5,
	},
	"res://source/match/units/SiegeArtilleryVehicle.tscn":
	{
		"sight_range": 9.0,
		"hp": 12,
		"hp_max": 12,
		"attack_damage": 4,
		"attack_interval": 2.5,
		"attack_range": 9.5,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 2.2,
		"splash_damage_multiplier": 0.6,
	},
	"res://source/match/units/SiegeDrillTank.tscn":
	{
		"sight_range": 8.5,
		"hp": 16,
		"hp_max": 16,
		"attack_damage": 4,
		"attack_interval": 1.4,
		"attack_range": 3.6,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"structure_damage_multiplier": 2.4,
	},
	"res://source/match/units/LanceBeamTank.tscn":
	{
		"sight_range": 10.0,
		"hp": 14,
		"hp_max": 14,
		"attack_damage": 3,
		"attack_interval": 0.9,
		"attack_range": 7.0,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
	},
	"res://source/match/units/RailgunTank.tscn":
	{
		"sight_range": 10.0,
		"hp": 16,
		"hp_max": 16,
		"attack_damage": 7,
		"attack_interval": 2.4,
		"attack_range": 8.5,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/HammerSiegeTank.tscn":
	{
		"sight_range": 9.5,
		"hp": 17,
		"hp_max": 17,
		"attack_damage": 6,
		"attack_interval": 2.6,
		"attack_range": 9.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 2.4,
		"splash_damage_multiplier": 0.65,
	},
	"res://source/match/units/HeavySiegeWalker.tscn":
	{
		"sight_range": 10.0,
		"hp": 20,
		"hp_max": 20,
		"attack_damage": 8,
		"attack_interval": 3.2,
		"attack_range": 10.5,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 2.8,
		"splash_damage_multiplier": 0.7,
	},
	"res://source/match/units/RailArtilleryWalker.tscn":
	{
		"sight_range": 11.0,
		"hp": 18,
		"hp_max": 18,
		"attack_damage": 10,
		"attack_interval": 3.6,
		"attack_range": 12.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 3.2,
		"splash_damage_multiplier": 0.65,
	},
	"res://source/match/units/EngineerDrone.tscn":
	{
		"sight_range": 9.0,
		"hp": 5,
		"hp_max": 5,
		"repair_rate": Repair.HITPOINTS_PER_SECOND,
		"capture_time": Capture.ENGINEER_CAPTURE_TIME_SECONDS,
	},
	"res://source/match/units/BomberVTOL.tscn":
	{
		"sight_range": 9.0,
		"hp": 12,
		"hp_max": 12,
		"attack_damage": 4,
		"attack_interval": 2.0,
		"attack_range": 6.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 2.0,
		"splash_damage_multiplier": 0.7,
	},
	"res://source/match/units/RocketGunship.tscn":
	{
		"sight_range": 10.0,
		"hp": 11,
		"hp_max": 11,
		"attack_damage": 3,
		"attack_interval": 1.2,
		"attack_range": 6.5,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
		"splash_radius": 1.2,
		"splash_damage_multiplier": 0.45,
	},
	"res://source/match/units/HeavyBombardmentAirship.tscn":
	{
		"sight_range": 10.0,
		"hp": 18,
		"hp_max": 18,
		"attack_damage": 7,
		"attack_interval": 3.0,
		"attack_range": 8.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 2.8,
		"splash_damage_multiplier": 0.75,
	},
	"res://source/match/units/SiegeAirship.tscn":
	{
		"sight_range": 10.5,
		"hp": 20,
		"hp_max": 20,
		"attack_damage": 8,
		"attack_interval": 3.4,
		"attack_range": 8.5,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 3.1,
		"splash_damage_multiplier": 0.8,
	},
	"res://source/match/units/CommandCenter.tscn":
	{
		"sight_range": 10.0,
		"hp": 20,
		"hp_max": 20,
	},
	"res://source/match/units/PowerReactor.tscn":
	{
		"sight_range": 8.0,
		"hp": 12,
		"hp_max": 12,
	},
	"res://source/match/units/AdvancedReactorPlant.tscn":
	{
		"sight_range": 9.0,
		"hp": 18,
		"hp_max": 18,
	},
	"res://source/match/units/Refinery.tscn":
	{
		"sight_range": 8.0,
		"hp": 14,
		"hp_max": 14,
	},
	"res://source/match/units/OrePurifier.tscn":
	{
		"sight_range": 8.5,
		"hp": 16,
		"hp_max": 16,
		"resource_bonus_ratio": 0.25,
	},
	"res://source/match/units/TechOilDerrick.tscn":
	{
		"sight_range": 7.5,
		"hp": 14,
		"hp_max": 14,
		"resource_income_a": 1,
		"resource_income_b": 0,
		"income_interval_s": 6.0,
		"capture_bonus_a": 4,
		"capture_bonus_b": 0,
	},
	"res://source/match/units/TechAirport.tscn":
	{
		"sight_range": 10.0,
		"hp": 18,
		"hp_max": 18,
	},
	"res://source/match/units/TechHospital.tscn":
	{
		"sight_range": 8.5,
		"hp": 16,
		"hp_max": 16,
		"healing_rate": 1.5,
		"healing_radius": 4.5,
	},
	"res://source/match/units/TechRepairDepot.tscn":
	{
		"sight_range": 8.5,
		"hp": 16,
		"hp_max": 16,
		"repair_rate": 3.0,
		"repair_radius": 4.75,
	},
	"res://source/match/units/TechBunker.tscn":
	{
		"sight_range": 9.5,
		"hp": 18,
		"hp_max": 18,
		"attack_damage": 0.0,
		"attack_interval": 0.85,
		"attack_range": 7.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"garrison_capacity": 4,
		"garrison_attack_damage_per_unit": 1.25,
	},
	"res://source/match/units/Barracks.tscn":
	{
		"sight_range": 8.0,
		"hp": 13,
		"hp_max": 13,
	},
	"res://source/match/units/RadarUplink.tscn":
	{
		"sight_range": 14.0,
		"hp": 12,
		"hp_max": 12,
	},
	"res://source/match/units/RoboticsBay.tscn":
	{
		"sight_range": 10.0,
		"hp": 14,
		"hp_max": 14,
	},
	"res://source/match/units/RepairPad.tscn":
	{
		"sight_range": 8.5,
		"hp": 13,
		"hp_max": 13,
		"repair_rate": 4.5,
	},
	"res://source/match/units/TechLab.tscn":
	{
		"sight_range": 10.0,
		"hp": 16,
		"hp_max": 16,
	},
	"res://source/match/units/WeatherControlSpire.tscn":
	{
		"sight_range": 12.0,
		"hp": 18,
		"hp_max": 18,
	},
	"res://source/match/units/VehicleFactory.tscn":
	{
		"sight_range": 8.0,
		"hp": 16,
		"hp_max": 16,
	},
	"res://source/match/units/AircraftFactory.tscn":
	{
		"sight_range": 8.0,
		"hp": 16,
		"hp_max": 16,
	},
	"res://source/match/units/AntiGroundTurret.tscn":
	{
		"sight_range": 8.0,
		"hp": 8,
		"hp_max": 8,
		"attack_damage": 2,
		"attack_interval": 1.0,
		"attack_range": 8.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/AntiAirTurret.tscn":
	{
		"sight_range": 8.0,
		"hp": 8,
		"hp_max": 8,
		"attack_damage": 2,
		"attack_interval": 0.75,
		"attack_range": 8.0,
		"attack_domains": [Navigation.Domain.AIR],
	},
	"res://source/match/units/TeslaFenceSegment.tscn":
	{
		"sight_range": 6.0,
		"hp": 16,
		"hp_max": 16,
		"attack_damage": 1.5,
		"attack_interval": 0.35,
		"attack_range": 2.6,
		"attack_domains": [Navigation.Domain.TERRAIN],
	},
	"res://source/match/units/ArcCoilDefenseTower.tscn":
	{
		"sight_range": 9.0,
		"hp": 10,
		"hp_max": 10,
		"attack_damage": 2,
		"attack_interval": 0.55,
		"attack_range": 7.5,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
		"splash_radius": 1.4,
		"splash_damage_multiplier": 0.45,
	},
	"res://source/match/units/LanceBeamDefenseTower.tscn":
	{
		"sight_range": 10.0,
		"hp": 12,
		"hp_max": 12,
		"attack_damage": 5,
		"attack_interval": 1.5,
		"attack_range": 9.5,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
	},
	"res://source/match/units/PrismDefenseObelisk.tscn":
	{
		"sight_range": 12.0,
		"hp": 13,
		"hp_max": 13,
		"attack_damage": 7,
		"attack_interval": 2.0,
		"attack_range": 11.0,
		"attack_domains": [Navigation.Domain.TERRAIN, Navigation.Domain.AIR],
		"structure_damage_multiplier": 1.5,
	},
	"res://source/match/units/RailCannonBunker.tscn":
	{
		"sight_range": 12.0,
		"hp": 14,
		"hp_max": 14,
		"attack_damage": 9,
		"attack_interval": 3.2,
		"attack_range": 12.0,
		"attack_domains": [Navigation.Domain.TERRAIN],
		"splash_radius": 3.0,
		"splash_damage_multiplier": 0.7,
		"structure_damage_multiplier": 1.35,
	},
}
const PROJECTILES = {
	"res://source/match/units/Helicopter.tscn": "res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/Tank.tscn": "res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/LightRifleInfantry.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/RocketInfantry.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/FlakRocketTeam.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/FlakRocketTeamMk2.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/InterceptorVTOL.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/HeavyMachinegunTrooper.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/ShockTrooper.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/ShieldTrooper.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/GrenadierTrooper.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/MortarTeam.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/CryoSprayer.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/SniperScout.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/RailSniperTeam.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/PhaseSaboteur.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/SaboteurInfiltrator.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/PulseRifleCommando.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/TacticalOfficer.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/ScoutRover.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/MirageScoutTank.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/FlameAssaultBuggy.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/TeslaCrawlerMk2.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/RocketTrooperRobot.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/JammerVehicle.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/AntiAirWalker.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/FlakHoverTank.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/ModularMissileCarrier.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/LongbowMissileCrawler.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/SiegeArtilleryVehicle.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/SiegeDrillTank.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/LanceBeamTank.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/RailgunTank.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/HammerSiegeTank.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/HeavySiegeWalker.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/RailArtilleryWalker.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/BomberVTOL.tscn": "res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/RocketGunship.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/HeavyBombardmentAirship.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/SiegeAirship.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/AntiGroundTurret.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/AntiAirTurret.tscn":
	"res://source/match/units/projectiles/Rocket.tscn",
	"res://source/match/units/ArcCoilDefenseTower.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/LanceBeamDefenseTower.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/PrismDefenseObelisk.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/RailCannonBunker.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn",
	"res://source/match/units/TechBunker.tscn":
	"res://source/match/units/projectiles/CannonShell.tscn"
}
const ADHERENCE_MARGIN_M = 0.3  # TODO: try lowering while fixing a 'push' problem
const NEW_RESOURCE_SEARCH_RADIUS_M = 30
const MOVING_UNIT_RADIUS_MAX_M = 1.0
const EMPTY_SPACE_RADIUS_SURROUNDING_STRUCTURE_M = MOVING_UNIT_RADIUS_MAX_M * 2.5
const BASE_CONSTRUCTION_RADIUS_M = 9.0
const STRUCTURE_CONSTRUCTING_SPEED = 0.3  # progress [0.0..1.0] per second
