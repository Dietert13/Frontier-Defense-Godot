extends "res://source/match/UnitPropertiesConstants.gd"

const PRODUCTION_COSTS = {
	"res://source/match/units/Worker.tscn":
	{
		"resource_a": 2,
		"resource_b": 0,
	},
	"res://source/match/units/Helicopter.tscn":
	{
		"resource_a": 1,
		"resource_b": 3,
	},
	"res://source/match/units/Drone.tscn":
	{
		"resource_a": 2,
		"resource_b": 0,
	},
	"res://source/match/units/InterceptorVTOL.tscn":
	{
		"resource_a": 3,
		"resource_b": 4,
	},
	"res://source/match/units/Tank.tscn":
	{
		"resource_a": 3,
		"resource_b": 1,
	},
	"res://source/match/units/LightRifleInfantry.tscn":
	{
		"resource_a": 1,
		"resource_b": 0,
	},
	"res://source/match/units/RocketInfantry.tscn":
	{
		"resource_a": 2,
		"resource_b": 1,
	},
	"res://source/match/units/FieldMedic.tscn":
	{
		"resource_a": 2,
		"resource_b": 1,
	},
	"res://source/match/units/ShieldTrooper.tscn":
	{
		"resource_a": 3,
		"resource_b": 2,
	},
	"res://source/match/units/TacticalOfficer.tscn":
	{
		"resource_a": 4,
		"resource_b": 3,
	},
	"res://source/match/units/FlakRocketTeam.tscn":
	{
		"resource_a": 3,
		"resource_b": 2,
	},
	"res://source/match/units/FlakRocketTeamMk2.tscn":
	{
		"resource_a": 4,
		"resource_b": 4,
	},
	"res://source/match/units/HeavyMachinegunTrooper.tscn":
	{
		"resource_a": 2,
		"resource_b": 1,
	},
	"res://source/match/units/ShockTrooper.tscn":
	{
		"resource_a": 3,
		"resource_b": 2,
	},
	"res://source/match/units/GrenadierTrooper.tscn":
	{
		"resource_a": 2,
		"resource_b": 2,
	},
	"res://source/match/units/MortarTeam.tscn":
	{
		"resource_a": 3,
		"resource_b": 2,
	},
	"res://source/match/units/CryoSprayer.tscn":
	{
		"resource_a": 3,
		"resource_b": 3,
	},
	"res://source/match/units/SniperScout.tscn":
	{
		"resource_a": 3,
		"resource_b": 2,
	},
	"res://source/match/units/RailSniperTeam.tscn":
	{
		"resource_a": 4,
		"resource_b": 4,
	},
	"res://source/match/units/PhaseSaboteur.tscn":
	{
		"resource_a": 4,
		"resource_b": 4,
	},
	"res://source/match/units/SaboteurInfiltrator.tscn":
	{
		"resource_a": 5,
		"resource_b": 5,
	},
	"res://source/match/units/PulseRifleCommando.tscn":
	{
		"resource_a": 4,
		"resource_b": 3,
	},
	"res://source/match/units/ScoutRover.tscn":
	{
		"resource_a": 2,
		"resource_b": 0,
	},
	"res://source/match/units/OreHarvester.tscn":
	{
		"resource_a": 4,
		"resource_b": 1,
	},
	"res://source/match/units/MobileConstructionVehicle.tscn":
	{
		"resource_a": 7,
		"resource_b": 6,
	},
	"res://source/match/units/MirageScoutTank.tscn":
	{
		"resource_a": 3,
		"resource_b": 2,
	},
	"res://source/match/units/FlameAssaultBuggy.tscn":
	{
		"resource_a": 2,
		"resource_b": 2,
	},
	"res://source/match/units/DroneMineLayer.tscn":
	{
		"resource_a": 4,
		"resource_b": 3,
	},
	"res://source/match/units/TeslaCrawlerMk2.tscn":
	{
		"resource_a": 4,
		"resource_b": 4,
	},
	"res://source/match/units/RocketTrooperRobot.tscn":
	{
		"resource_a": 2,
		"resource_b": 1,
	},
	"res://source/match/units/JammerVehicle.tscn":
	{
		"resource_a": 3,
		"resource_b": 3,
	},
	"res://source/match/units/AntiAirWalker.tscn":
	{
		"resource_a": 3,
		"resource_b": 2,
	},
	"res://source/match/units/FlakHoverTank.tscn":
	{
		"resource_a": 4,
		"resource_b": 3,
	},
	"res://source/match/units/MobileRepairCrawler.tscn":
	{
		"resource_a": 4,
		"resource_b": 4,
	},
	"res://source/match/units/MobileShieldProjector.tscn":
	{
		"resource_a": 5,
		"resource_b": 4,
	},
	"res://source/match/units/ModularMissileCarrier.tscn":
	{
		"resource_a": 4,
		"resource_b": 4,
	},
	"res://source/match/units/LongbowMissileCrawler.tscn":
	{
		"resource_a": 5,
		"resource_b": 5,
	},
	"res://source/match/units/SiegeArtilleryVehicle.tscn":
	{
		"resource_a": 5,
		"resource_b": 3,
	},
	"res://source/match/units/SiegeDrillTank.tscn":
	{
		"resource_a": 5,
		"resource_b": 4,
	},
	"res://source/match/units/LanceBeamTank.tscn":
	{
		"resource_a": 5,
		"resource_b": 5,
	},
	"res://source/match/units/RailgunTank.tscn":
	{
		"resource_a": 6,
		"resource_b": 5,
	},
	"res://source/match/units/HammerSiegeTank.tscn":
	{
		"resource_a": 6,
		"resource_b": 4,
	},
	"res://source/match/units/HeavySiegeWalker.tscn":
	{
		"resource_a": 7,
		"resource_b": 6,
	},
	"res://source/match/units/RailArtilleryWalker.tscn":
	{
		"resource_a": 8,
		"resource_b": 7,
	},
	"res://source/match/units/EngineerDrone.tscn":
	{
		"resource_a": 2,
		"resource_b": 2,
	},
	"res://source/match/units/BomberVTOL.tscn":
	{
		"resource_a": 4,
		"resource_b": 5,
	},
	"res://source/match/units/RocketGunship.tscn":
	{
		"resource_a": 5,
		"resource_b": 5,
	},
	"res://source/match/units/HeavyBombardmentAirship.tscn":
	{
		"resource_a": 7,
		"resource_b": 8,
	},
	"res://source/match/units/SiegeAirship.tscn":
	{
		"resource_a": 8,
		"resource_b": 8,
	},
}
const PRODUCTION_TIMES = {
	"res://source/match/units/Worker.tscn": 3.0,
	"res://source/match/units/Helicopter.tscn": 6.0,
	"res://source/match/units/Drone.tscn": 3.0,
	"res://source/match/units/InterceptorVTOL.tscn": 7.5,
	"res://source/match/units/Tank.tscn": 6.0,
	"res://source/match/units/LightRifleInfantry.tscn": 3.0,
	"res://source/match/units/RocketInfantry.tscn": 5.0,
	"res://source/match/units/FieldMedic.tscn": 4.5,
	"res://source/match/units/ShieldTrooper.tscn": 5.5,
	"res://source/match/units/TacticalOfficer.tscn": 6.0,
	"res://source/match/units/FlakRocketTeam.tscn": 5.8,
	"res://source/match/units/FlakRocketTeamMk2.tscn": 7.2,
	"res://source/match/units/HeavyMachinegunTrooper.tscn": 4.5,
	"res://source/match/units/ShockTrooper.tscn": 5.5,
	"res://source/match/units/GrenadierTrooper.tscn": 5.0,
	"res://source/match/units/MortarTeam.tscn": 6.0,
	"res://source/match/units/CryoSprayer.tscn": 6.5,
	"res://source/match/units/SniperScout.tscn": 6.5,
	"res://source/match/units/RailSniperTeam.tscn": 8.0,
	"res://source/match/units/PhaseSaboteur.tscn": 7.0,
	"res://source/match/units/SaboteurInfiltrator.tscn": 8.0,
	"res://source/match/units/PulseRifleCommando.tscn": 7.5,
	"res://source/match/units/ScoutRover.tscn": 4.0,
	"res://source/match/units/OreHarvester.tscn": 7.0,
	"res://source/match/units/MobileConstructionVehicle.tscn": 10.5,
	"res://source/match/units/MirageScoutTank.tscn": 5.5,
	"res://source/match/units/FlameAssaultBuggy.tscn": 5.0,
	"res://source/match/units/DroneMineLayer.tscn": 7.0,
	"res://source/match/units/TeslaCrawlerMk2.tscn": 7.5,
	"res://source/match/units/RocketTrooperRobot.tscn": 5.0,
	"res://source/match/units/JammerVehicle.tscn": 6.5,
	"res://source/match/units/AntiAirWalker.tscn": 7.0,
	"res://source/match/units/FlakHoverTank.tscn": 7.0,
	"res://source/match/units/MobileRepairCrawler.tscn": 7.5,
	"res://source/match/units/MobileShieldProjector.tscn": 8.0,
	"res://source/match/units/ModularMissileCarrier.tscn": 8.0,
	"res://source/match/units/LongbowMissileCrawler.tscn": 9.5,
	"res://source/match/units/SiegeArtilleryVehicle.tscn": 9.0,
	"res://source/match/units/SiegeDrillTank.tscn": 8.5,
	"res://source/match/units/LanceBeamTank.tscn": 9.5,
	"res://source/match/units/RailgunTank.tscn": 11.0,
	"res://source/match/units/HammerSiegeTank.tscn": 11.5,
	"res://source/match/units/HeavySiegeWalker.tscn": 12.0,
	"res://source/match/units/RailArtilleryWalker.tscn": 13.5,
	"res://source/match/units/EngineerDrone.tscn": 5.0,
	"res://source/match/units/BomberVTOL.tscn": 10.0,
	"res://source/match/units/RocketGunship.tscn": 9.0,
	"res://source/match/units/HeavyBombardmentAirship.tscn": 13.0,
	"res://source/match/units/SiegeAirship.tscn": 14.0,
}
const PRODUCTION_REQUIREMENTS = {
	"res://source/match/units/RocketInfantry.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/FlakRocketTeam.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/FlakRocketTeamMk2.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/GrenadierTrooper.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/MortarTeam.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/ShockTrooper.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/ShieldTrooper.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/TacticalOfficer.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/CryoSprayer.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/SniperScout.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/RailSniperTeam.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/PhaseSaboteur.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/SaboteurInfiltrator.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/PulseRifleCommando.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/MirageScoutTank.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/RocketTrooperRobot.tscn":
	["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/DroneMineLayer.tscn": ["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/TeslaCrawlerMk2.tscn": ["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/AntiAirWalker.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/FlakHoverTank.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/MobileRepairCrawler.tscn":
	["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/MobileShieldProjector.tscn":
	["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/MobileConstructionVehicle.tscn":
	["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/ModularMissileCarrier.tscn":
	["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/LongbowMissileCrawler.tscn":
	["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/JammerVehicle.tscn": ["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/EngineerDrone.tscn": ["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/InterceptorVTOL.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/SiegeArtilleryVehicle.tscn":
	["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/SiegeDrillTank.tscn": ["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/LanceBeamTank.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/RailgunTank.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/HammerSiegeTank.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/HeavySiegeWalker.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/RailArtilleryWalker.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/BomberVTOL.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/RocketGunship.tscn": ["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/HeavyBombardmentAirship.tscn":
	["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/SiegeAirship.tscn": ["res://source/match/units/TechLab.tscn"],
}
const PRODUCTION_QUEUE_LIMIT = 5
const CRUSH_DAMAGE = 999.0
const CRUSH_RADIUS_MARGIN_M = 0.15
const CRUSH_MIN_FRAME_DISPLACEMENT_M = 0.005
const CRUSHER_UNIT_PATHS = [
	"res://source/match/units/Tank.tscn",
	"res://source/match/units/OreHarvester.tscn",
	"res://source/match/units/MobileConstructionVehicle.tscn",
	"res://source/match/units/TeslaCrawlerMk2.tscn",
	"res://source/match/units/AntiAirWalker.tscn",
	"res://source/match/units/MobileRepairCrawler.tscn",
	"res://source/match/units/MobileShieldProjector.tscn",
	"res://source/match/units/ModularMissileCarrier.tscn",
	"res://source/match/units/LongbowMissileCrawler.tscn",
	"res://source/match/units/SiegeArtilleryVehicle.tscn",
	"res://source/match/units/SiegeDrillTank.tscn",
	"res://source/match/units/LanceBeamTank.tscn",
	"res://source/match/units/RailgunTank.tscn",
	"res://source/match/units/HammerSiegeTank.tscn",
	"res://source/match/units/HeavySiegeWalker.tscn",
	"res://source/match/units/RailArtilleryWalker.tscn",
]
const CRUSHABLE_UNIT_PATHS = [
	"res://source/match/units/Worker.tscn",
	"res://source/match/units/EngineerDrone.tscn",
	"res://source/match/units/LightRifleInfantry.tscn",
	"res://source/match/units/RocketInfantry.tscn",
	"res://source/match/units/FieldMedic.tscn",
	"res://source/match/units/ShieldTrooper.tscn",
	"res://source/match/units/FlakRocketTeam.tscn",
	"res://source/match/units/FlakRocketTeamMk2.tscn",
	"res://source/match/units/HeavyMachinegunTrooper.tscn",
	"res://source/match/units/ShockTrooper.tscn",
	"res://source/match/units/GrenadierTrooper.tscn",
	"res://source/match/units/MortarTeam.tscn",
	"res://source/match/units/CryoSprayer.tscn",
	"res://source/match/units/SniperScout.tscn",
	"res://source/match/units/RailSniperTeam.tscn",
	"res://source/match/units/PhaseSaboteur.tscn",
	"res://source/match/units/SaboteurInfiltrator.tscn",
	"res://source/match/units/PulseRifleCommando.tscn",
	"res://source/match/units/TacticalOfficer.tscn",
	"res://source/match/units/RocketTrooperRobot.tscn",
]
const STRUCTURE_BLUEPRINTS = {
	"res://source/match/units/CommandCenter.tscn":
	"res://source/match/units/structure-geometries/CommandCenter.tscn",
	"res://source/match/units/PowerReactor.tscn":
	"res://source/match/units/structure-geometries/PowerReactor.tscn",
	"res://source/match/units/AdvancedReactorPlant.tscn":
	"res://source/match/units/structure-geometries/AdvancedReactorPlant.tscn",
	"res://source/match/units/Refinery.tscn":
	"res://source/match/units/structure-geometries/Refinery.tscn",
	"res://source/match/units/OrePurifier.tscn":
	"res://source/match/units/structure-geometries/OrePurifier.tscn",
	"res://source/match/units/Barracks.tscn":
	"res://source/match/units/structure-geometries/Barracks.tscn",
	"res://source/match/units/RadarUplink.tscn":
	"res://source/match/units/structure-geometries/RadarUplink.tscn",
	"res://source/match/units/RoboticsBay.tscn":
	"res://source/match/units/structure-geometries/RoboticsBay.tscn",
	"res://source/match/units/RepairPad.tscn":
	"res://source/match/units/structure-geometries/RepairPad.tscn",
	"res://source/match/units/TechLab.tscn":
	"res://source/match/units/structure-geometries/TechLab.tscn",
	"res://source/match/units/VehicleFactory.tscn":
	"res://source/match/units/structure-geometries/VehicleFactory.tscn",
	"res://source/match/units/AircraftFactory.tscn":
	"res://source/match/units/structure-geometries/AircraftFactory.tscn",
	"res://source/match/units/AntiGroundTurret.tscn":
	"res://source/match/units/structure-geometries/AntiGroundTurret.tscn",
	"res://source/match/units/AntiAirTurret.tscn":
	"res://source/match/units/structure-geometries/AntiAirTurret.tscn",
	"res://source/match/units/TeslaFenceSegment.tscn":
	"res://source/match/units/structure-geometries/TeslaFenceSegment.tscn",
	"res://source/match/units/ArcCoilDefenseTower.tscn":
	"res://source/match/units/structure-geometries/ArcCoilDefenseTower.tscn",
	"res://source/match/units/LanceBeamDefenseTower.tscn":
	"res://source/match/units/structure-geometries/LanceBeamDefenseTower.tscn",
	"res://source/match/units/PrismDefenseObelisk.tscn":
	"res://source/match/units/structure-geometries/PrismDefenseObelisk.tscn",
	"res://source/match/units/RailCannonBunker.tscn":
	"res://source/match/units/structure-geometries/RailCannonBunker.tscn",
	"res://source/match/units/WeatherControlSpire.tscn":
	"res://source/match/units/structure-geometries/WeatherControlSpire.tscn",
}
const CONSTRUCTION_REQUIREMENTS = {
	"res://source/match/units/RoboticsBay.tscn": ["res://source/match/units/RadarUplink.tscn"],
	"res://source/match/units/TechLab.tscn": ["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/AdvancedReactorPlant.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/OrePurifier.tscn":
	["res://source/match/units/TechLab.tscn", "res://source/match/units/Refinery.tscn"],
	"res://source/match/units/ArcCoilDefenseTower.tscn":
	["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/TeslaFenceSegment.tscn":
	["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/RepairPad.tscn": ["res://source/match/units/RoboticsBay.tscn"],
	"res://source/match/units/LanceBeamDefenseTower.tscn":
	["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/PrismDefenseObelisk.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/RailCannonBunker.tscn": ["res://source/match/units/TechLab.tscn"],
	"res://source/match/units/WeatherControlSpire.tscn": ["res://source/match/units/TechLab.tscn"],
}
const STRUCTURE_NAME_KEYS = {
	"res://source/match/units/CommandCenter.tscn": "CC",
	"res://source/match/units/PowerReactor.tscn": "POWER_REACTOR",
	"res://source/match/units/AdvancedReactorPlant.tscn": "ADVANCED_REACTOR_PLANT",
	"res://source/match/units/Refinery.tscn": "REFINERY",
	"res://source/match/units/OrePurifier.tscn": "ORE_PURIFIER",
	"res://source/match/units/TechOilDerrick.tscn": "TECH_OIL_DERRICK",
	"res://source/match/units/TechAirport.tscn": "TECH_AIRPORT",
	"res://source/match/units/TechHospital.tscn": "TECH_HOSPITAL",
	"res://source/match/units/TechRepairDepot.tscn": "TECH_REPAIR_DEPOT",
	"res://source/match/units/TechBunker.tscn": "TECH_BUNKER",
	"res://source/match/units/Barracks.tscn": "BARRACKS",
	"res://source/match/units/RadarUplink.tscn": "RADAR_UPLINK",
	"res://source/match/units/RoboticsBay.tscn": "ROBOTICS_BAY",
	"res://source/match/units/RepairPad.tscn": "REPAIR_PAD",
	"res://source/match/units/TechLab.tscn": "TECH_LAB",
	"res://source/match/units/VehicleFactory.tscn": "VEHICLE_FACTORY",
	"res://source/match/units/AircraftFactory.tscn": "AIRCRAFT_FACTORY",
	"res://source/match/units/AntiGroundTurret.tscn": "AG_TURRET",
	"res://source/match/units/AntiAirTurret.tscn": "AA_TURRET",
	"res://source/match/units/TeslaFenceSegment.tscn": "TESLA_FENCE_SEGMENT",
	"res://source/match/units/ArcCoilDefenseTower.tscn": "ARC_COIL_DEFENSE_TOWER",
	"res://source/match/units/LanceBeamDefenseTower.tscn": "LANCE_BEAM_DEFENSE_TOWER",
	"res://source/match/units/PrismDefenseObelisk.tscn": "PRISM_DEFENSE_OBELISK",
	"res://source/match/units/RailCannonBunker.tscn": "RAIL_CANNON_BUNKER",
	"res://source/match/units/WeatherControlSpire.tscn": "WEATHER_CONTROL_SPIRE",
}
const CONSTRUCTION_COSTS = {
	"res://source/match/units/CommandCenter.tscn":
	{
		"resource_a": 8,
		"resource_b": 8,
	},
	"res://source/match/units/PowerReactor.tscn":
	{
		"resource_a": 3,
		"resource_b": 1,
	},
	"res://source/match/units/AdvancedReactorPlant.tscn":
	{
		"resource_a": 8,
		"resource_b": 8,
	},
	"res://source/match/units/Refinery.tscn":
	{
		"resource_a": 4,
		"resource_b": 2,
	},
	"res://source/match/units/OrePurifier.tscn":
	{
		"resource_a": 6,
		"resource_b": 6,
	},
	"res://source/match/units/Barracks.tscn":
	{
		"resource_a": 3,
		"resource_b": 1,
	},
	"res://source/match/units/RadarUplink.tscn":
	{
		"resource_a": 4,
		"resource_b": 3,
	},
	"res://source/match/units/RoboticsBay.tscn":
	{
		"resource_a": 5,
		"resource_b": 5,
	},
	"res://source/match/units/RepairPad.tscn":
	{
		"resource_a": 4,
		"resource_b": 3,
	},
	"res://source/match/units/TechLab.tscn":
	{
		"resource_a": 7,
		"resource_b": 7,
	},
	"res://source/match/units/VehicleFactory.tscn":
	{
		"resource_a": 6,
		"resource_b": 0,
	},
	"res://source/match/units/AircraftFactory.tscn":
	{
		"resource_a": 4,
		"resource_b": 4,
	},
	"res://source/match/units/AntiGroundTurret.tscn":
	{
		"resource_a": 2,
		"resource_b": 2,
	},
	"res://source/match/units/AntiAirTurret.tscn":
	{
		"resource_a": 2,
		"resource_b": 2,
	},
	"res://source/match/units/TeslaFenceSegment.tscn":
	{
		"resource_a": 3,
		"resource_b": 3,
	},
	"res://source/match/units/ArcCoilDefenseTower.tscn":
	{
		"resource_a": 4,
		"resource_b": 5,
	},
	"res://source/match/units/LanceBeamDefenseTower.tscn":
	{
		"resource_a": 5,
		"resource_b": 6,
	},
	"res://source/match/units/PrismDefenseObelisk.tscn":
	{
		"resource_a": 7,
		"resource_b": 8,
	},
	"res://source/match/units/RailCannonBunker.tscn":
	{
		"resource_a": 6,
		"resource_b": 7,
	},
	"res://source/match/units/WeatherControlSpire.tscn":
	{
		"resource_a": 8,
		"resource_b": 9,
	},
}
const POWER_SUPPLY = {
	"res://source/match/units/CommandCenter.tscn": 8,
	"res://source/match/units/PowerReactor.tscn": 18,
	"res://source/match/units/AdvancedReactorPlant.tscn": 48,
}
const POWER_DRAIN = {
	"res://source/match/units/Refinery.tscn": 4,
	"res://source/match/units/OrePurifier.tscn": 6,
	"res://source/match/units/Barracks.tscn": 4,
	"res://source/match/units/RadarUplink.tscn": 5,
	"res://source/match/units/RoboticsBay.tscn": 6,
	"res://source/match/units/RepairPad.tscn": 5,
	"res://source/match/units/TechLab.tscn": 8,
	"res://source/match/units/VehicleFactory.tscn": 6,
	"res://source/match/units/AircraftFactory.tscn": 7,
	"res://source/match/units/AntiGroundTurret.tscn": 4,
	"res://source/match/units/AntiAirTurret.tscn": 4,
	"res://source/match/units/TeslaFenceSegment.tscn": 3,
	"res://source/match/units/ArcCoilDefenseTower.tscn": 8,
	"res://source/match/units/LanceBeamDefenseTower.tscn": 10,
	"res://source/match/units/PrismDefenseObelisk.tscn": 13,
	"res://source/match/units/RailCannonBunker.tscn": 12,
	"res://source/match/units/WeatherControlSpire.tscn": 14,
}
