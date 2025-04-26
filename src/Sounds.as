package
{
   import Audio.GameSound;
   
   public class Sounds
   {
      public static var shoot_embed:Class = Sounds_shoot_embed;
      
      public static var shoot:GameSound = GameSound.forEmbed(shoot_embed,0.600000024,0);
      
      public static var explosion_1_embed:Class = Sounds_explosion_1_embed;
      
      public static var explosion_2_embed:Class = Sounds_explosion_2_embed;
      
      public static var explosion_3_embed:Class = Sounds_explosion_3_embed;
      
      public static var explosion_embed:Array = [explosion_1_embed,explosion_2_embed,explosion_3_embed];
      
      public static var explosion:GameSound = GameSound.forEmbedArray(explosion_embed,0.400000036,0);
      
      public static var droneBig_1_embed:Class = Sounds_droneBig_1_embed;
      
      public static var droneBig_embed:Array = [droneBig_1_embed];
      
      public static var droneBig:GameSound = GameSound.forEmbedArray(droneBig_embed,0.400000006,0);
      
      public static var laserShoot_embed:Class = Sounds_laserShoot_embed;
      
      public static var laserShoot:GameSound = GameSound.forEmbed(laserShoot_embed,0.5,0);
      
      public static var grenadeShoot_embed:Class = Sounds_grenadeShoot_embed;
      
      public static var grenadeShoot:GameSound = GameSound.forEmbed(grenadeShoot_embed,0.300000012,0);
      
      public static var shotgunShoot_embed:Class = Sounds_shotgunShoot_embed;
      
      public static var shotgunShoot:GameSound = GameSound.forEmbed(shotgunShoot_embed,0.400000006,0);
      
      public static var pickup_embed:Class = Sounds_pickup_embed;
      
      public static var pickup:GameSound = GameSound.forEmbed(pickup_embed,0.5,0);
      
      public static var pickupWeapon_embed:Class = Sounds_pickupWeapon_embed;
      
      public static var pickupWeapon:GameSound = GameSound.forEmbed(pickupWeapon_embed,0.300000012,0);
      
      public static var wallHit_1_embed:Class = Sounds_wallHit_1_embed;
      
      public static var wallHit_2_embed:Class = Sounds_wallHit_2_embed;
      
      public static var wallHit_3_embed:Class = Sounds_wallHit_3_embed;
      
      public static var wallHit_embed:Array = [wallHit_1_embed,wallHit_2_embed,wallHit_3_embed];
      
      public static var wallHit:GameSound = GameSound.forEmbedArray(wallHit_embed,0.100000016,0);
      
      public static var objectHit_1_embed:Class = Sounds_objectHit_1_embed;
      
      public static var objectHit_2_embed:Class = Sounds_objectHit_2_embed;
      
      public static var objectHit_3_embed:Class = Sounds_objectHit_3_embed;
      
      public static var objectHit_embed:Array = [objectHit_1_embed,objectHit_2_embed,objectHit_3_embed];
      
      public static var objectHit:GameSound = GameSound.forEmbedArray(objectHit_embed,0.200000003,0);
      
      public static var doorOpen_embed:Class = Sounds_doorOpen_embed;
      
      public static var doorOpen:GameSound = GameSound.forEmbed(doorOpen_embed,0.599999964,200);
      
      public static var doorClose_embed:Class = Sounds_doorClose_embed;
      
      public static var doorClose:GameSound = GameSound.forEmbed(doorClose_embed,0.400000036,200);
      
      public static var pickupKey_embed:Class = Sounds_pickupKey_embed;
      
      public static var pickupKey:GameSound = GameSound.forEmbed(pickupKey_embed,1,0);
      
      public static var rocketShoot_embed:Class = Sounds_rocketShoot_embed;
      
      public static var rocketShoot:GameSound = GameSound.forEmbed(rocketShoot_embed,0.5,0);
      
      public static var rocketHit_1_embed:Class = Sounds_rocketHit_1_embed;
      
      public static var rocketHit_2_embed:Class = Sounds_rocketHit_2_embed;
      
      public static var rocketHit_3_embed:Class = Sounds_rocketHit_3_embed;
      
      public static var rocketHit_embed:Array = [rocketHit_1_embed,rocketHit_2_embed,rocketHit_3_embed];
      
      public static var rocketHit:GameSound = GameSound.forEmbedArray(rocketHit_embed,0.449999988,0);
      
      public static var enemyShoot_embed:Class = Sounds_enemyShoot_embed;
      
      public static var enemyShoot:GameSound = GameSound.forEmbed(enemyShoot_embed,0.200000018,0);
      
      public static var Quest_1_embed:Class = Sounds_Quest_1_embed;
      
      public static var Quest_2_embed:Class = Sounds_Quest_2_embed;
      
      public static var Quest_3_embed:Class = Sounds_Quest_3_embed;
      
      public static var Quest_4_embed:Class = Sounds_Quest_4_embed;
      
      public static var Quest_5_embed:Class = Sounds_Quest_5_embed;
      
      public static var Quest_6_embed:Class = Sounds_Quest_6_embed;
      
      public static var Quest_7_embed:Class = Sounds_Quest_7_embed;
      
      public static var Quest_8_embed:Class = Sounds_Quest_8_embed;
      
      public static var Quest_9_embed:Class = Sounds_Quest_9_embed;
      
      public static var Quest_10_embed:Class = Sounds_Quest_10_embed;
      
      public static var Quest_11_embed:Class = Sounds_Quest_11_embed;
      
      public static var Quest_12_embed:Class = Sounds_Quest_12_embed;
      
      public static var Quest_13_embed:Class = Sounds_Quest_13_embed;
      
      public static var Quest_embed:Array = [Quest_1_embed,Quest_2_embed,Quest_3_embed,Quest_4_embed,Quest_5_embed,Quest_6_embed,Quest_7_embed,Quest_8_embed,Quest_9_embed,Quest_10_embed,Quest_11_embed,Quest_12_embed,Quest_13_embed];
      
      public static var Quest:GameSound = GameSound.forEmbedArray(Quest_embed,1,0);
      
      public static var levelUp_embed:Class = Sounds_levelUp_embed;
      
      public static var levelUp:GameSound = GameSound.forEmbed(levelUp_embed,1,0);
      
      public static var missionComplete_embed:Class = Sounds_missionComplete_embed;
      
      public static var missionComplete:GameSound = GameSound.forEmbed(missionComplete_embed,1,0);
      
      public static var shieldPickup_embed:Class = Sounds_shieldPickup_embed;
      
      public static var shieldPickup:GameSound = GameSound.forEmbed(shieldPickup_embed,1,0);
      
      public static var treasureOpen_embed:Class = Sounds_treasureOpen_embed;
      
      public static var treasureOpen:GameSound = GameSound.forEmbed(treasureOpen_embed,1,0);
      
      public static var trap_embed:Class = Sounds_trap_embed;
      
      public static var trap:GameSound = GameSound.forEmbed(trap_embed,1,0);
      
      public static var flameTurretFire_embed:Class = Sounds_flameTurretFire_embed;
      
      public static var flameTurretFire:GameSound = GameSound.forEmbed(flameTurretFire_embed,1,250);
      
      public static var propSounds_6_embed:Class = Sounds_propSounds_6_embed;
      
      public static var propSounds_10_embed:Class = Sounds_propSounds_10_embed;
      
      public static var propSounds_14_embed:Class = Sounds_propSounds_14_embed;
      
      public static var propSounds_15_embed:Class = Sounds_propSounds_15_embed;
      
      public static var propSounds_19_embed:Class = Sounds_propSounds_19_embed;
      
      public static var propSounds_23_embed:Class = Sounds_propSounds_23_embed;
      
      public static var propSounds_sparse:* = [null,null,null,null,null,GameSound.forEmbed(propSounds_6_embed,0.600000024,500),null,null,null,GameSound.forEmbed(propSounds_10_embed,0.600000024,500),null,null,null,GameSound.forEmbed(propSounds_14_embed,0.600000024,500),GameSound.forEmbed(propSounds_15_embed,0.600000024,500),null,null,null,GameSound.forEmbed(propSounds_19_embed,0.600000024,500),null,null,null,GameSound.forEmbed(propSounds_23_embed,0.600000024,500)];
      
      public static var propSounds_embed:Array = [null,null,null,null,null,propSounds_6_embed,null,null,null,propSounds_10_embed,null,null,null,propSounds_14_embed,propSounds_15_embed,null,null,null,propSounds_19_embed,null,null,null,propSounds_23_embed];
      
      public static var propSounds:GameSound = GameSound.forEmbedArray(propSounds_embed,0.600000024,500);
      
      public static var cavern_embed:Class = Sounds_cavern_embed;
      
      public static var cavern:GameSound = GameSound.forEmbed(cavern_embed,1,0);
      
      public static var textPrint_embed:Class = Sounds_textPrint_embed;
      
      public static var textPrint:GameSound = GameSound.forEmbed(textPrint_embed,0.600000024,0);
      
      public static var teleport_embed:Class = Sounds_teleport_embed;
      
      public static var teleport:GameSound = GameSound.forEmbed(teleport_embed,1,100);
      
      public static var turretFire_embed:Class = Sounds_turretFire_embed;
      
      public static var turretFire:GameSound = GameSound.forEmbed(turretFire_embed,1,0);
      
      public static var hulkFire_embed:Class = Sounds_hulkFire_embed;
      
      public static var hulkFire:GameSound = GameSound.forEmbed(hulkFire_embed,1,0);
      
      public static var hoverFire_embed:Class = Sounds_hoverFire_embed;
      
      public static var hoverFire:GameSound = GameSound.forEmbed(hoverFire_embed,0.100000009,0);
      
      public static var spiderGunnerFire_embed:Class = Sounds_spiderGunnerFire_embed;
      
      public static var spiderGunnerFire:GameSound = GameSound.forEmbed(spiderGunnerFire_embed,0.5,0);
      
      public static var hunterFire_embed:Class = Sounds_hunterFire_embed;
      
      public static var hunterFire:GameSound = GameSound.forEmbed(hunterFire_embed,0.5,0);
      
      public static var bigTurretFire_embed:Class = Sounds_bigTurretFire_embed;
      
      public static var bigTurretFire:GameSound = GameSound.forEmbed(bigTurretFire_embed,0.5,0);
      
      public static var shooteyGruntFire_embed:Class = Sounds_shooteyGruntFire_embed;
      
      public static var shooteyGruntFire:GameSound = GameSound.forEmbed(shooteyGruntFire_embed,1,0);
      
      public static var bigHoverFire_embed:Class = Sounds_bigHoverFire_embed;
      
      public static var bigHoverFire:GameSound = GameSound.forEmbed(bigHoverFire_embed,1,0);
      
      public static var laserEnemyFire_embed:Class = Sounds_laserEnemyFire_embed;
      
      public static var laserEnemyFire:GameSound = GameSound.forEmbed(laserEnemyFire_embed,0.5,0);
      
      public static var sleeperFire_embed:Class = Sounds_sleeperFire_embed;
      
      public static var sleeperFire:GameSound = GameSound.forEmbed(sleeperFire_embed,1,0);
      
      public static var shieldGunnerFire_embed:Class = Sounds_shieldGunnerFire_embed;
      
      public static var shieldGunnerFire:GameSound = GameSound.forEmbed(shieldGunnerFire_embed,1,0);
      
      public static var gasTankDestroy_embed:Class = Sounds_gasTankDestroy_embed;
      
      public static var gasTankDestroy:GameSound = GameSound.forEmbed(gasTankDestroy_embed,0.400000006,0);
      
      public static var shieldsLow_embed:Class = Sounds_shieldsLow_embed;
      
      public static var shieldsLow:GameSound = GameSound.forEmbed(shieldsLow_embed,1,0);
      
      public static var shieldsCritical_embed:Class = Sounds_shieldsCritical_embed;
      
      public static var shieldsCritical:GameSound = GameSound.forEmbed(shieldsCritical_embed,1,0);
      
      public static var laserBeam_embed:Class = Sounds_laserBeam_embed;
      
      public static var laserBeam:GameSound = GameSound.forEmbed(laserBeam_embed,0.699999988,100);
      
      public static var playerLaserHit_embed:Class = Sounds_playerLaserHit_embed;
      
      public static var playerLaserHit:GameSound = GameSound.forEmbed(playerLaserHit_embed,0.600000024,0);
      
      public static var invPickup_embed:Class = Sounds_invPickup_embed;
      
      public static var invPickup:GameSound = GameSound.forEmbed(invPickup_embed,1,0);
      
      public static var invPlace_embed:Class = Sounds_invPlace_embed;
      
      public static var invPlace:GameSound = GameSound.forEmbed(invPlace_embed,0.699999988,0);
      
      public static var slide_embed:Class = Sounds_slide_embed;
      
      public static var slide:GameSound = GameSound.forEmbed(slide_embed,0.600000024,0);
      
      public static var experienceTick_embed:Class = Sounds_experienceTick_embed;
      
      public static var experienceTick:GameSound = GameSound.forEmbed(experienceTick_embed,0.600000024,0);
      
      public static var pickupItem_embed:Class = Sounds_pickupItem_embed;
      
      public static var pickupItem:GameSound = GameSound.forEmbed(pickupItem_embed,1,0);
      
      public static var medkit_embed:Class = Sounds_medkit_embed;
      
      public static var medkit:GameSound = GameSound.forEmbed(medkit_embed,1,0);
      
      public static var enemySpawn_embed:Class = Sounds_enemySpawn_embed;
      
      public static var enemySpawn:GameSound = GameSound.forEmbed(enemySpawn_embed,1,0);
      
      public static var introTrack_embed:Class = Sounds_introTrack_embed;
      
      public static var introTrack:GameSound = GameSound.forEmbed(introTrack_embed,1,0);
      
      public static var menuTrack_embed:Class = Sounds_menuTrack_embed;
      
      public static var menuTrack:GameSound = GameSound.forEmbed(menuTrack_embed,1,0);
      
      public static var alienTalk_1_embed:Class = Sounds_alienTalk_1_embed;
      
      public static var alienTalk_2_embed:Class = Sounds_alienTalk_2_embed;
      
      public static var alienTalk_3_embed:Class = Sounds_alienTalk_3_embed;
      
      public static var alienTalk_4_embed:Class = Sounds_alienTalk_4_embed;
      
      public static var alienTalk_embed:Array = [alienTalk_1_embed,alienTalk_2_embed,alienTalk_3_embed,alienTalk_4_embed];
      
      public static var alienTalk:GameSound = GameSound.forEmbedArray(alienTalk_embed,1,0);
      
      public static var pulseShoot_embed:Class = Sounds_pulseShoot_embed;
      
      public static var pulseShoot:GameSound = GameSound.forEmbed(pulseShoot_embed,0.200000018,0);
      
      public static var missionCompleteDescriptive_3_embed:Class = Sounds_missionCompleteDescriptive_3_embed;
      
      public static var missionCompleteDescriptive_6_embed:Class = Sounds_missionCompleteDescriptive_6_embed;
      
      public static var missionCompleteDescriptive_8_embed:Class = Sounds_missionCompleteDescriptive_8_embed;
      
      public static var missionCompleteDescriptive_11_embed:Class = Sounds_missionCompleteDescriptive_11_embed;
      
      public static var missionCompleteDescriptive_sparse:* = [null,null,GameSound.forEmbed(missionCompleteDescriptive_3_embed,1,0),null,null,GameSound.forEmbed(missionCompleteDescriptive_6_embed,1,0),null,GameSound.forEmbed(missionCompleteDescriptive_8_embed,1,0),null,null,GameSound.forEmbed(missionCompleteDescriptive_11_embed,1,0)];
      
      public static var missionCompleteDescriptive_embed:Array = [null,null,missionCompleteDescriptive_3_embed,null,null,missionCompleteDescriptive_6_embed,null,missionCompleteDescriptive_8_embed,null,null,missionCompleteDescriptive_11_embed];
      
      public static var missionCompleteDescriptive:GameSound = GameSound.forEmbedArray(missionCompleteDescriptive_embed,1,0);
      
      public static var drillStart_embed:Class = Sounds_drillStart_embed;
      
      public static var drillStart:GameSound = GameSound.forEmbed(drillStart_embed,1,0);
      
      public static var drillLoop_embed:Class = Sounds_drillLoop_embed;
      
      public static var drillLoop:GameSound = GameSound.forEmbed(drillLoop_embed,1,0);
      
      public static var drillEnd_embed:Class = Sounds_drillEnd_embed;
      
      public static var drillEnd:GameSound = GameSound.forEmbed(drillEnd_embed,1,0);
      
      public static var plasmaShotgunFire_embed:Class = Sounds_plasmaShotgunFire_embed;
      
      public static var plasmaShotgunFire:GameSound = GameSound.forEmbed(plasmaShotgunFire_embed,1,0);
      
      public static var shredderFire_embed:Class = Sounds_shredderFire_embed;
      
      public static var shredderFire:GameSound = GameSound.forEmbed(shredderFire_embed,1,0);
      
      public static var machineOn_embed:Class = Sounds_machineOn_embed;
      
      public static var machineOn:GameSound = GameSound.forEmbed(machineOn_embed,1,0);
      
      public static var cannon_embed:Class = Sounds_cannon_embed;
      
      public static var cannon:GameSound = GameSound.forEmbed(cannon_embed,1,0);
      
      public function Sounds()
      {
         super();
      }
   }
}

