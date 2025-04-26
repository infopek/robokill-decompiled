package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class globalParticles
   {
      public static var emitters:Array;
      
      public static var par1_1_embed:Class = Embeds.p_purple001_png;
      
      public static var par1_1:BitmapData = new Embeds.p_purple001_png().bitmapData;
      
      public static var par1_2_embed:Class = Embeds.p_purple002_png;
      
      public static var par1_2:BitmapData = new Embeds.p_purple002_png().bitmapData;
      
      public static var par1_3_embed:Class = Embeds.p_purple003_png;
      
      public static var par1_3:BitmapData = new Embeds.p_purple003_png().bitmapData;
      
      public static var par1_4_embed:Class = Embeds.p_purple004_png;
      
      public static var par1_4:BitmapData = new Embeds.p_purple004_png().bitmapData;
      
      public static var par1_5_embed:Class = Embeds.p_purple005_png;
      
      public static var par1_5:BitmapData = new Embeds.p_purple005_png().bitmapData;
      
      public static var par1_6_embed:Class = Embeds.p_purple006_png;
      
      public static var par1_6:BitmapData = new Embeds.p_purple006_png().bitmapData;
      
      public static var par1_7_embed:Class = Embeds.p_purple007_png;
      
      public static var par1_7:BitmapData = new Embeds.p_purple007_png().bitmapData;
      
      public static var par1_8_embed:Class = Embeds.p_purple008_png;
      
      public static var par1_8:BitmapData = new Embeds.p_purple008_png().bitmapData;
      
      public static var par1_9_embed:Class = Embeds.p_purple009_png;
      
      public static var par1_9:BitmapData = new Embeds.p_purple009_png().bitmapData;
      
      public static var par1_10_embed:Class = Embeds.p_purple010_png;
      
      public static var par1_10:BitmapData = new Embeds.p_purple010_png().bitmapData;
      
      public static var par1_11_embed:Class = Embeds.p_purple011_png;
      
      public static var par1_11:BitmapData = new Embeds.p_purple011_png().bitmapData;
      
      public static var par1_12_embed:Class = Embeds.p_purple012_png;
      
      public static var par1_12:BitmapData = new Embeds.p_purple012_png().bitmapData;
      
      public static var par1_13_embed:Class = Embeds.p_purple013_png;
      
      public static var par1_13:BitmapData = new Embeds.p_purple013_png().bitmapData;
      
      public static var par1_14_embed:Class = Embeds.p_purple014_png;
      
      public static var par1_14:BitmapData = new Embeds.p_purple014_png().bitmapData;
      
      public static var par1_15_embed:Class = Embeds.p_purple015_png;
      
      public static var par1_15:BitmapData = new Embeds.p_purple015_png().bitmapData;
      
      public static var par1_16_embed:Class = Embeds.p_purple016_png;
      
      public static var par1_16:BitmapData = new Embeds.p_purple016_png().bitmapData;
      
      public static var par1_17_embed:Class = Embeds.p_purple017_png;
      
      public static var par1_17:BitmapData = new Embeds.p_purple017_png().bitmapData;
      
      public static var par1_18_embed:Class = Embeds.p_purple018_png;
      
      public static var par1_18:BitmapData = new Embeds.p_purple018_png().bitmapData;
      
      public static var par1_19_embed:Class = Embeds.p_purple019_png;
      
      public static var par1_19:BitmapData = new Embeds.p_purple019_png().bitmapData;
      
      public static var par1_20_embed:Class = Embeds.p_purple020_png;
      
      public static var par1_20:BitmapData = new Embeds.p_purple020_png().bitmapData;
      
      public static var par1_21_embed:Class = Embeds.p_purple021_png;
      
      public static var par1_21:BitmapData = new Embeds.p_purple021_png().bitmapData;
      
      public static var par1_22_embed:Class = Embeds.p_purple022_png;
      
      public static var par1_22:BitmapData = new Embeds.p_purple022_png().bitmapData;
      
      public static var par1_23_embed:Class = Embeds.p_purple023_png;
      
      public static var par1_23:BitmapData = new Embeds.p_purple023_png().bitmapData;
      
      public static var par1_24_embed:Class = Embeds.p_purple024_png;
      
      public static var par1_24:BitmapData = new Embeds.p_purple024_png().bitmapData;
      
      public static var par1:Array = [par1_1,par1_2,par1_3,par1_4,par1_5,par1_6,par1_7,par1_8,par1_9,par1_10,par1_11,par1_12,par1_13,par1_14,par1_15,par1_16,par1_17,par1_18,par1_19,par1_20,par1_21,par1_22,par1_23,par1_24];
      
      public static var par2_1_embed:Class = Embeds.smoke_d001_png;
      
      public static var par2_1:BitmapData = new Embeds.smoke_d001_png().bitmapData;
      
      public static var par2_2_embed:Class = Embeds.smoke_d002_png;
      
      public static var par2_2:BitmapData = new Embeds.smoke_d002_png().bitmapData;
      
      public static var par2_3_embed:Class = Embeds.smoke_d003_png;
      
      public static var par2_3:BitmapData = new Embeds.smoke_d003_png().bitmapData;
      
      public static var par2_4_embed:Class = Embeds.smoke_d004_png;
      
      public static var par2_4:BitmapData = new Embeds.smoke_d004_png().bitmapData;
      
      public static var par2_5_embed:Class = Embeds.smoke_d005_png;
      
      public static var par2_5:BitmapData = new Embeds.smoke_d005_png().bitmapData;
      
      public static var par2_6_embed:Class = Embeds.smoke_d006_png;
      
      public static var par2_6:BitmapData = new Embeds.smoke_d006_png().bitmapData;
      
      public static var par2_7_embed:Class = Embeds.smoke_d007_png;
      
      public static var par2_7:BitmapData = new Embeds.smoke_d007_png().bitmapData;
      
      public static var par2_8_embed:Class = Embeds.smoke_d008_png;
      
      public static var par2_8:BitmapData = new Embeds.smoke_d008_png().bitmapData;
      
      public static var par2_9_embed:Class = Embeds.smoke_d009_png;
      
      public static var par2_9:BitmapData = new Embeds.smoke_d009_png().bitmapData;
      
      public static var par2_10_embed:Class = Embeds.smoke_d010_png;
      
      public static var par2_10:BitmapData = new Embeds.smoke_d010_png().bitmapData;
      
      public static var par2_11_embed:Class = Embeds.smoke_d011_png;
      
      public static var par2_11:BitmapData = new Embeds.smoke_d011_png().bitmapData;
      
      public static var par2_12_embed:Class = Embeds.smoke_d012_png;
      
      public static var par2_12:BitmapData = new Embeds.smoke_d012_png().bitmapData;
      
      public static var par2_13_embed:Class = Embeds.smoke_d013_png;
      
      public static var par2_13:BitmapData = new Embeds.smoke_d013_png().bitmapData;
      
      public static var par2_14_embed:Class = Embeds.smoke_d014_png;
      
      public static var par2_14:BitmapData = new Embeds.smoke_d014_png().bitmapData;
      
      public static var par2_15_embed:Class = Embeds.smoke_d015_png;
      
      public static var par2_15:BitmapData = new Embeds.smoke_d015_png().bitmapData;
      
      public static var par2_16_embed:Class = Embeds.smoke_d016_png;
      
      public static var par2_16:BitmapData = new Embeds.smoke_d016_png().bitmapData;
      
      public static var par2:Array = [par2_1,par2_2,par2_3,par2_4,par2_5,par2_6,par2_7,par2_8,par2_9,par2_10,par2_11,par2_12,par2_13,par2_14,par2_15,par2_16];
      
      public static var par3_embed:Class = Embeds.gun_flash_png;
      
      public static var par3:BitmapData = new Embeds.gun_flash_png().bitmapData;
      
      public static var par4_1_embed:Class = Embeds.ringanim001_png;
      
      public static var par4_1:BitmapData = new Embeds.ringanim001_png().bitmapData;
      
      public static var par4_2_embed:Class = Embeds.ringanim002_png;
      
      public static var par4_2:BitmapData = new Embeds.ringanim002_png().bitmapData;
      
      public static var par4_3_embed:Class = Embeds.ringanim003_png;
      
      public static var par4_3:BitmapData = new Embeds.ringanim003_png().bitmapData;
      
      public static var par4_4_embed:Class = Embeds.ringanim004_png;
      
      public static var par4_4:BitmapData = new Embeds.ringanim004_png().bitmapData;
      
      public static var par4_5_embed:Class = Embeds.ringanim005_png;
      
      public static var par4_5:BitmapData = new Embeds.ringanim005_png().bitmapData;
      
      public static var par4_6_embed:Class = Embeds.ringanim006_png;
      
      public static var par4_6:BitmapData = new Embeds.ringanim006_png().bitmapData;
      
      public static var par4_7_embed:Class = Embeds.ringanim007_png;
      
      public static var par4_7:BitmapData = new Embeds.ringanim007_png().bitmapData;
      
      public static var par4_8_embed:Class = Embeds.ringanim008_png;
      
      public static var par4_8:BitmapData = new Embeds.ringanim008_png().bitmapData;
      
      public static var par4_9_embed:Class = Embeds.ringanim009_png;
      
      public static var par4_9:BitmapData = new Embeds.ringanim009_png().bitmapData;
      
      public static var par4_10_embed:Class = Embeds.ringanim010_png;
      
      public static var par4_10:BitmapData = new Embeds.ringanim010_png().bitmapData;
      
      public static var par4_11_embed:Class = Embeds.ringanim011_png;
      
      public static var par4_11:BitmapData = new Embeds.ringanim011_png().bitmapData;
      
      public static var par4:Array = [par4_1,par4_2,par4_3,par4_4,par4_5,par4_6,par4_7,par4_8,par4_9,par4_10,par4_11];
      
      public static var par5_embed:Class = Embeds.laser_flash_png;
      
      public static var par5:BitmapData = new Embeds.laser_flash_png().bitmapData;
      
      public static var par6_1_embed:Class = Embeds.p_purple001_png;
      
      public static var par6_1:BitmapData = new Embeds.p_purple001_png().bitmapData;
      
      public static var par6_2_embed:Class = Embeds.p_purple002_png;
      
      public static var par6_2:BitmapData = new Embeds.p_purple002_png().bitmapData;
      
      public static var par6_3_embed:Class = Embeds.p_purple003_png;
      
      public static var par6_3:BitmapData = new Embeds.p_purple003_png().bitmapData;
      
      public static var par6_4_embed:Class = Embeds.p_purple004_png;
      
      public static var par6_4:BitmapData = new Embeds.p_purple004_png().bitmapData;
      
      public static var par6_5_embed:Class = Embeds.p_purple005_png;
      
      public static var par6_5:BitmapData = new Embeds.p_purple005_png().bitmapData;
      
      public static var par6_6_embed:Class = Embeds.p_purple006_png;
      
      public static var par6_6:BitmapData = new Embeds.p_purple006_png().bitmapData;
      
      public static var par6_7_embed:Class = Embeds.p_purple007_png;
      
      public static var par6_7:BitmapData = new Embeds.p_purple007_png().bitmapData;
      
      public static var par6_8_embed:Class = Embeds.p_purple008_png;
      
      public static var par6_8:BitmapData = new Embeds.p_purple008_png().bitmapData;
      
      public static var par6_9_embed:Class = Embeds.p_purple009_png;
      
      public static var par6_9:BitmapData = new Embeds.p_purple009_png().bitmapData;
      
      public static var par6_10_embed:Class = Embeds.p_purple010_png;
      
      public static var par6_10:BitmapData = new Embeds.p_purple010_png().bitmapData;
      
      public static var par6_11_embed:Class = Embeds.p_purple011_png;
      
      public static var par6_11:BitmapData = new Embeds.p_purple011_png().bitmapData;
      
      public static var par6_12_embed:Class = Embeds.p_purple012_png;
      
      public static var par6_12:BitmapData = new Embeds.p_purple012_png().bitmapData;
      
      public static var par6_13_embed:Class = Embeds.p_purple013_png;
      
      public static var par6_13:BitmapData = new Embeds.p_purple013_png().bitmapData;
      
      public static var par6_14_embed:Class = Embeds.p_purple014_png;
      
      public static var par6_14:BitmapData = new Embeds.p_purple014_png().bitmapData;
      
      public static var par6_15_embed:Class = Embeds.p_purple015_png;
      
      public static var par6_15:BitmapData = new Embeds.p_purple015_png().bitmapData;
      
      public static var par6_16_embed:Class = Embeds.p_purple016_png;
      
      public static var par6_16:BitmapData = new Embeds.p_purple016_png().bitmapData;
      
      public static var par6_17_embed:Class = Embeds.p_purple017_png;
      
      public static var par6_17:BitmapData = new Embeds.p_purple017_png().bitmapData;
      
      public static var par6_18_embed:Class = Embeds.p_purple018_png;
      
      public static var par6_18:BitmapData = new Embeds.p_purple018_png().bitmapData;
      
      public static var par6_19_embed:Class = Embeds.p_purple019_png;
      
      public static var par6_19:BitmapData = new Embeds.p_purple019_png().bitmapData;
      
      public static var par6_20_embed:Class = Embeds.p_purple020_png;
      
      public static var par6_20:BitmapData = new Embeds.p_purple020_png().bitmapData;
      
      public static var par6_21_embed:Class = Embeds.p_purple021_png;
      
      public static var par6_21:BitmapData = new Embeds.p_purple021_png().bitmapData;
      
      public static var par6_22_embed:Class = Embeds.p_purple022_png;
      
      public static var par6_22:BitmapData = new Embeds.p_purple022_png().bitmapData;
      
      public static var par6_23_embed:Class = Embeds.p_purple023_png;
      
      public static var par6_23:BitmapData = new Embeds.p_purple023_png().bitmapData;
      
      public static var par6_24_embed:Class = Embeds.p_purple024_png;
      
      public static var par6_24:BitmapData = new Embeds.p_purple024_png().bitmapData;
      
      public static var par6:Array = [par6_1,par6_2,par6_3,par6_4,par6_5,par6_6,par6_7,par6_8,par6_9,par6_10,par6_11,par6_12,par6_13,par6_14,par6_15,par6_16,par6_17,par6_18,par6_19,par6_20,par6_21,par6_22,par6_23,par6_24];
      
      public static var par7_1_embed:Class = Embeds.p_purple001_png;
      
      public static var par7_1:BitmapData = new Embeds.p_purple001_png().bitmapData;
      
      public static var par7_2_embed:Class = Embeds.p_purple002_png;
      
      public static var par7_2:BitmapData = new Embeds.p_purple002_png().bitmapData;
      
      public static var par7_3_embed:Class = Embeds.p_purple003_png;
      
      public static var par7_3:BitmapData = new Embeds.p_purple003_png().bitmapData;
      
      public static var par7_4_embed:Class = Embeds.p_purple004_png;
      
      public static var par7_4:BitmapData = new Embeds.p_purple004_png().bitmapData;
      
      public static var par7_5_embed:Class = Embeds.p_purple005_png;
      
      public static var par7_5:BitmapData = new Embeds.p_purple005_png().bitmapData;
      
      public static var par7_6_embed:Class = Embeds.p_purple006_png;
      
      public static var par7_6:BitmapData = new Embeds.p_purple006_png().bitmapData;
      
      public static var par7_7_embed:Class = Embeds.p_purple007_png;
      
      public static var par7_7:BitmapData = new Embeds.p_purple007_png().bitmapData;
      
      public static var par7_8_embed:Class = Embeds.p_purple008_png;
      
      public static var par7_8:BitmapData = new Embeds.p_purple008_png().bitmapData;
      
      public static var par7_9_embed:Class = Embeds.p_purple009_png;
      
      public static var par7_9:BitmapData = new Embeds.p_purple009_png().bitmapData;
      
      public static var par7_10_embed:Class = Embeds.p_purple010_png;
      
      public static var par7_10:BitmapData = new Embeds.p_purple010_png().bitmapData;
      
      public static var par7_11_embed:Class = Embeds.p_purple011_png;
      
      public static var par7_11:BitmapData = new Embeds.p_purple011_png().bitmapData;
      
      public static var par7_12_embed:Class = Embeds.p_purple012_png;
      
      public static var par7_12:BitmapData = new Embeds.p_purple012_png().bitmapData;
      
      public static var par7_13_embed:Class = Embeds.p_purple013_png;
      
      public static var par7_13:BitmapData = new Embeds.p_purple013_png().bitmapData;
      
      public static var par7_14_embed:Class = Embeds.p_purple014_png;
      
      public static var par7_14:BitmapData = new Embeds.p_purple014_png().bitmapData;
      
      public static var par7_15_embed:Class = Embeds.p_purple015_png;
      
      public static var par7_15:BitmapData = new Embeds.p_purple015_png().bitmapData;
      
      public static var par7_16_embed:Class = Embeds.p_purple016_png;
      
      public static var par7_16:BitmapData = new Embeds.p_purple016_png().bitmapData;
      
      public static var par7_17_embed:Class = Embeds.p_purple017_png;
      
      public static var par7_17:BitmapData = new Embeds.p_purple017_png().bitmapData;
      
      public static var par7_18_embed:Class = Embeds.p_purple018_png;
      
      public static var par7_18:BitmapData = new Embeds.p_purple018_png().bitmapData;
      
      public static var par7_19_embed:Class = Embeds.p_purple019_png;
      
      public static var par7_19:BitmapData = new Embeds.p_purple019_png().bitmapData;
      
      public static var par7_20_embed:Class = Embeds.p_purple020_png;
      
      public static var par7_20:BitmapData = new Embeds.p_purple020_png().bitmapData;
      
      public static var par7_21_embed:Class = Embeds.p_purple021_png;
      
      public static var par7_21:BitmapData = new Embeds.p_purple021_png().bitmapData;
      
      public static var par7_22_embed:Class = Embeds.p_purple022_png;
      
      public static var par7_22:BitmapData = new Embeds.p_purple022_png().bitmapData;
      
      public static var par7_23_embed:Class = Embeds.p_purple023_png;
      
      public static var par7_23:BitmapData = new Embeds.p_purple023_png().bitmapData;
      
      public static var par7_24_embed:Class = Embeds.p_purple024_png;
      
      public static var par7_24:BitmapData = new Embeds.p_purple024_png().bitmapData;
      
      public static var par7:Array = [par7_1,par7_2,par7_3,par7_4,par7_5,par7_6,par7_7,par7_8,par7_9,par7_10,par7_11,par7_12,par7_13,par7_14,par7_15,par7_16,par7_17,par7_18,par7_19,par7_20,par7_21,par7_22,par7_23,par7_24];
      
      public static var par8_1_embed:Class = Embeds.p_purple001_png;
      
      public static var par8_1:BitmapData = new Embeds.p_purple001_png().bitmapData;
      
      public static var par8_2_embed:Class = Embeds.p_purple002_png;
      
      public static var par8_2:BitmapData = new Embeds.p_purple002_png().bitmapData;
      
      public static var par8_3_embed:Class = Embeds.p_purple003_png;
      
      public static var par8_3:BitmapData = new Embeds.p_purple003_png().bitmapData;
      
      public static var par8_4_embed:Class = Embeds.p_purple004_png;
      
      public static var par8_4:BitmapData = new Embeds.p_purple004_png().bitmapData;
      
      public static var par8_5_embed:Class = Embeds.p_purple005_png;
      
      public static var par8_5:BitmapData = new Embeds.p_purple005_png().bitmapData;
      
      public static var par8_6_embed:Class = Embeds.p_purple006_png;
      
      public static var par8_6:BitmapData = new Embeds.p_purple006_png().bitmapData;
      
      public static var par8_7_embed:Class = Embeds.p_purple007_png;
      
      public static var par8_7:BitmapData = new Embeds.p_purple007_png().bitmapData;
      
      public static var par8_8_embed:Class = Embeds.p_purple008_png;
      
      public static var par8_8:BitmapData = new Embeds.p_purple008_png().bitmapData;
      
      public static var par8_9_embed:Class = Embeds.p_purple009_png;
      
      public static var par8_9:BitmapData = new Embeds.p_purple009_png().bitmapData;
      
      public static var par8_10_embed:Class = Embeds.p_purple010_png;
      
      public static var par8_10:BitmapData = new Embeds.p_purple010_png().bitmapData;
      
      public static var par8_11_embed:Class = Embeds.p_purple011_png;
      
      public static var par8_11:BitmapData = new Embeds.p_purple011_png().bitmapData;
      
      public static var par8_12_embed:Class = Embeds.p_purple012_png;
      
      public static var par8_12:BitmapData = new Embeds.p_purple012_png().bitmapData;
      
      public static var par8_13_embed:Class = Embeds.p_purple013_png;
      
      public static var par8_13:BitmapData = new Embeds.p_purple013_png().bitmapData;
      
      public static var par8_14_embed:Class = Embeds.p_purple014_png;
      
      public static var par8_14:BitmapData = new Embeds.p_purple014_png().bitmapData;
      
      public static var par8_15_embed:Class = Embeds.p_purple015_png;
      
      public static var par8_15:BitmapData = new Embeds.p_purple015_png().bitmapData;
      
      public static var par8_16_embed:Class = Embeds.p_purple016_png;
      
      public static var par8_16:BitmapData = new Embeds.p_purple016_png().bitmapData;
      
      public static var par8_17_embed:Class = Embeds.p_purple017_png;
      
      public static var par8_17:BitmapData = new Embeds.p_purple017_png().bitmapData;
      
      public static var par8_18_embed:Class = Embeds.p_purple018_png;
      
      public static var par8_18:BitmapData = new Embeds.p_purple018_png().bitmapData;
      
      public static var par8_19_embed:Class = Embeds.p_purple019_png;
      
      public static var par8_19:BitmapData = new Embeds.p_purple019_png().bitmapData;
      
      public static var par8_20_embed:Class = Embeds.p_purple020_png;
      
      public static var par8_20:BitmapData = new Embeds.p_purple020_png().bitmapData;
      
      public static var par8_21_embed:Class = Embeds.p_purple021_png;
      
      public static var par8_21:BitmapData = new Embeds.p_purple021_png().bitmapData;
      
      public static var par8_22_embed:Class = Embeds.p_purple022_png;
      
      public static var par8_22:BitmapData = new Embeds.p_purple022_png().bitmapData;
      
      public static var par8_23_embed:Class = Embeds.p_purple023_png;
      
      public static var par8_23:BitmapData = new Embeds.p_purple023_png().bitmapData;
      
      public static var par8_24_embed:Class = Embeds.p_purple024_png;
      
      public static var par8_24:BitmapData = new Embeds.p_purple024_png().bitmapData;
      
      public static var par8:Array = [par8_1,par8_2,par8_3,par8_4,par8_5,par8_6,par8_7,par8_8,par8_9,par8_10,par8_11,par8_12,par8_13,par8_14,par8_15,par8_16,par8_17,par8_18,par8_19,par8_20,par8_21,par8_22,par8_23,par8_24];
      
      public static var par9_1_embed:Class = Embeds.p_purple001_png;
      
      public static var par9_1:BitmapData = new Embeds.p_purple001_png().bitmapData;
      
      public static var par9_2_embed:Class = Embeds.p_purple002_png;
      
      public static var par9_2:BitmapData = new Embeds.p_purple002_png().bitmapData;
      
      public static var par9_3_embed:Class = Embeds.p_purple003_png;
      
      public static var par9_3:BitmapData = new Embeds.p_purple003_png().bitmapData;
      
      public static var par9_4_embed:Class = Embeds.p_purple004_png;
      
      public static var par9_4:BitmapData = new Embeds.p_purple004_png().bitmapData;
      
      public static var par9_5_embed:Class = Embeds.p_purple005_png;
      
      public static var par9_5:BitmapData = new Embeds.p_purple005_png().bitmapData;
      
      public static var par9_6_embed:Class = Embeds.p_purple006_png;
      
      public static var par9_6:BitmapData = new Embeds.p_purple006_png().bitmapData;
      
      public static var par9_7_embed:Class = Embeds.p_purple007_png;
      
      public static var par9_7:BitmapData = new Embeds.p_purple007_png().bitmapData;
      
      public static var par9_8_embed:Class = Embeds.p_purple008_png;
      
      public static var par9_8:BitmapData = new Embeds.p_purple008_png().bitmapData;
      
      public static var par9_9_embed:Class = Embeds.p_purple009_png;
      
      public static var par9_9:BitmapData = new Embeds.p_purple009_png().bitmapData;
      
      public static var par9_10_embed:Class = Embeds.p_purple010_png;
      
      public static var par9_10:BitmapData = new Embeds.p_purple010_png().bitmapData;
      
      public static var par9_11_embed:Class = Embeds.p_purple011_png;
      
      public static var par9_11:BitmapData = new Embeds.p_purple011_png().bitmapData;
      
      public static var par9_12_embed:Class = Embeds.p_purple012_png;
      
      public static var par9_12:BitmapData = new Embeds.p_purple012_png().bitmapData;
      
      public static var par9_13_embed:Class = Embeds.p_purple013_png;
      
      public static var par9_13:BitmapData = new Embeds.p_purple013_png().bitmapData;
      
      public static var par9_14_embed:Class = Embeds.p_purple014_png;
      
      public static var par9_14:BitmapData = new Embeds.p_purple014_png().bitmapData;
      
      public static var par9_15_embed:Class = Embeds.p_purple015_png;
      
      public static var par9_15:BitmapData = new Embeds.p_purple015_png().bitmapData;
      
      public static var par9_16_embed:Class = Embeds.p_purple016_png;
      
      public static var par9_16:BitmapData = new Embeds.p_purple016_png().bitmapData;
      
      public static var par9_17_embed:Class = Embeds.p_purple017_png;
      
      public static var par9_17:BitmapData = new Embeds.p_purple017_png().bitmapData;
      
      public static var par9_18_embed:Class = Embeds.p_purple018_png;
      
      public static var par9_18:BitmapData = new Embeds.p_purple018_png().bitmapData;
      
      public static var par9_19_embed:Class = Embeds.p_purple019_png;
      
      public static var par9_19:BitmapData = new Embeds.p_purple019_png().bitmapData;
      
      public static var par9_20_embed:Class = Embeds.p_purple020_png;
      
      public static var par9_20:BitmapData = new Embeds.p_purple020_png().bitmapData;
      
      public static var par9_21_embed:Class = Embeds.p_purple021_png;
      
      public static var par9_21:BitmapData = new Embeds.p_purple021_png().bitmapData;
      
      public static var par9_22_embed:Class = Embeds.p_purple022_png;
      
      public static var par9_22:BitmapData = new Embeds.p_purple022_png().bitmapData;
      
      public static var par9_23_embed:Class = Embeds.p_purple023_png;
      
      public static var par9_23:BitmapData = new Embeds.p_purple023_png().bitmapData;
      
      public static var par9_24_embed:Class = Embeds.p_purple024_png;
      
      public static var par9_24:BitmapData = new Embeds.p_purple024_png().bitmapData;
      
      public static var par9:Array = [par9_1,par9_2,par9_3,par9_4,par9_5,par9_6,par9_7,par9_8,par9_9,par9_10,par9_11,par9_12,par9_13,par9_14,par9_15,par9_16,par9_17,par9_18,par9_19,par9_20,par9_21,par9_22,par9_23,par9_24];
      
      public static var par10_1_embed:Class = Embeds.trail001_png;
      
      public static var par10_1:BitmapData = new Embeds.trail001_png().bitmapData;
      
      public static var par10_2_embed:Class = Embeds.trail002_png;
      
      public static var par10_2:BitmapData = new Embeds.trail002_png().bitmapData;
      
      public static var par10_3_embed:Class = Embeds.trail003_png;
      
      public static var par10_3:BitmapData = new Embeds.trail003_png().bitmapData;
      
      public static var par10_4_embed:Class = Embeds.trail004_png;
      
      public static var par10_4:BitmapData = new Embeds.trail004_png().bitmapData;
      
      public static var par10_5_embed:Class = Embeds.trail005_png;
      
      public static var par10_5:BitmapData = new Embeds.trail005_png().bitmapData;
      
      public static var par10_6_embed:Class = Embeds.trail006_png;
      
      public static var par10_6:BitmapData = new Embeds.trail006_png().bitmapData;
      
      public static var par10_7_embed:Class = Embeds.trail007_png;
      
      public static var par10_7:BitmapData = new Embeds.trail007_png().bitmapData;
      
      public static var par10_8_embed:Class = Embeds.trail008_png;
      
      public static var par10_8:BitmapData = new Embeds.trail008_png().bitmapData;
      
      public static var par10_9_embed:Class = Embeds.trail009_png;
      
      public static var par10_9:BitmapData = new Embeds.trail009_png().bitmapData;
      
      public static var par10_10_embed:Class = Embeds.trail010_png;
      
      public static var par10_10:BitmapData = new Embeds.trail010_png().bitmapData;
      
      public static var par10_11_embed:Class = Embeds.trail011_png;
      
      public static var par10_11:BitmapData = new Embeds.trail011_png().bitmapData;
      
      public static var par10_12_embed:Class = Embeds.trail012_png;
      
      public static var par10_12:BitmapData = new Embeds.trail012_png().bitmapData;
      
      public static var par10_13_embed:Class = Embeds.trail013_png;
      
      public static var par10_13:BitmapData = new Embeds.trail013_png().bitmapData;
      
      public static var par10_14_embed:Class = Embeds.trail014_png;
      
      public static var par10_14:BitmapData = new Embeds.trail014_png().bitmapData;
      
      public static var par10_15_embed:Class = Embeds.trail015_png;
      
      public static var par10_15:BitmapData = new Embeds.trail015_png().bitmapData;
      
      public static var par10_16_embed:Class = Embeds.trail016_png;
      
      public static var par10_16:BitmapData = new Embeds.trail016_png().bitmapData;
      
      public static var par10:Array = [par10_1,par10_2,par10_3,par10_4,par10_5,par10_6,par10_7,par10_8,par10_9,par10_10,par10_11,par10_12,par10_13,par10_14,par10_15,par10_16];
      
      public static var par11_1_embed:Class = Embeds.smoke_d001_png;
      
      public static var par11_1:BitmapData = new Embeds.smoke_d001_png().bitmapData;
      
      public static var par11_2_embed:Class = Embeds.smoke_d002_png;
      
      public static var par11_2:BitmapData = new Embeds.smoke_d002_png().bitmapData;
      
      public static var par11_3_embed:Class = Embeds.smoke_d003_png;
      
      public static var par11_3:BitmapData = new Embeds.smoke_d003_png().bitmapData;
      
      public static var par11_4_embed:Class = Embeds.smoke_d004_png;
      
      public static var par11_4:BitmapData = new Embeds.smoke_d004_png().bitmapData;
      
      public static var par11_5_embed:Class = Embeds.smoke_d005_png;
      
      public static var par11_5:BitmapData = new Embeds.smoke_d005_png().bitmapData;
      
      public static var par11_6_embed:Class = Embeds.smoke_d006_png;
      
      public static var par11_6:BitmapData = new Embeds.smoke_d006_png().bitmapData;
      
      public static var par11_7_embed:Class = Embeds.smoke_d007_png;
      
      public static var par11_7:BitmapData = new Embeds.smoke_d007_png().bitmapData;
      
      public static var par11_8_embed:Class = Embeds.smoke_d008_png;
      
      public static var par11_8:BitmapData = new Embeds.smoke_d008_png().bitmapData;
      
      public static var par11_9_embed:Class = Embeds.smoke_d009_png;
      
      public static var par11_9:BitmapData = new Embeds.smoke_d009_png().bitmapData;
      
      public static var par11_10_embed:Class = Embeds.smoke_d010_png;
      
      public static var par11_10:BitmapData = new Embeds.smoke_d010_png().bitmapData;
      
      public static var par11_11_embed:Class = Embeds.smoke_d011_png;
      
      public static var par11_11:BitmapData = new Embeds.smoke_d011_png().bitmapData;
      
      public static var par11_12_embed:Class = Embeds.smoke_d012_png;
      
      public static var par11_12:BitmapData = new Embeds.smoke_d012_png().bitmapData;
      
      public static var par11_13_embed:Class = Embeds.smoke_d013_png;
      
      public static var par11_13:BitmapData = new Embeds.smoke_d013_png().bitmapData;
      
      public static var par11_14_embed:Class = Embeds.smoke_d014_png;
      
      public static var par11_14:BitmapData = new Embeds.smoke_d014_png().bitmapData;
      
      public static var par11_15_embed:Class = Embeds.smoke_d015_png;
      
      public static var par11_15:BitmapData = new Embeds.smoke_d015_png().bitmapData;
      
      public static var par11_16_embed:Class = Embeds.smoke_d016_png;
      
      public static var par11_16:BitmapData = new Embeds.smoke_d016_png().bitmapData;
      
      public static var par11:Array = [par11_1,par11_2,par11_3,par11_4,par11_5,par11_6,par11_7,par11_8,par11_9,par11_10,par11_11,par11_12,par11_13,par11_14,par11_15,par11_16];
      
      public static var par12_embed:Class = Embeds.gun_flash_2_png;
      
      public static var par12:BitmapData = new Embeds.gun_flash_2_png().bitmapData;
      
      public static var par13_1_embed:Class = Embeds.shellcase001_png;
      
      public static var par13_1:BitmapData = new Embeds.shellcase001_png().bitmapData;
      
      public static var par13_2_embed:Class = Embeds.shellcase002_png;
      
      public static var par13_2:BitmapData = new Embeds.shellcase002_png().bitmapData;
      
      public static var par13_3_embed:Class = Embeds.shellcase003_png;
      
      public static var par13_3:BitmapData = new Embeds.shellcase003_png().bitmapData;
      
      public static var par13_4_embed:Class = Embeds.shellcase004_png;
      
      public static var par13_4:BitmapData = new Embeds.shellcase004_png().bitmapData;
      
      public static var par13_5_embed:Class = Embeds.shellcase005_png;
      
      public static var par13_5:BitmapData = new Embeds.shellcase005_png().bitmapData;
      
      public static var par13_6_embed:Class = Embeds.shellcase006_png;
      
      public static var par13_6:BitmapData = new Embeds.shellcase006_png().bitmapData;
      
      public static var par13_7_embed:Class = Embeds.shellcase007_png;
      
      public static var par13_7:BitmapData = new Embeds.shellcase007_png().bitmapData;
      
      public static var par13_8_embed:Class = Embeds.shellcase008_png;
      
      public static var par13_8:BitmapData = new Embeds.shellcase008_png().bitmapData;
      
      public static var par13_9_embed:Class = Embeds.shellcase009_png;
      
      public static var par13_9:BitmapData = new Embeds.shellcase009_png().bitmapData;
      
      public static var par13_10_embed:Class = Embeds.shellcase010_png;
      
      public static var par13_10:BitmapData = new Embeds.shellcase010_png().bitmapData;
      
      public static var par13_11_embed:Class = Embeds.shellcase011_png;
      
      public static var par13_11:BitmapData = new Embeds.shellcase011_png().bitmapData;
      
      public static var par13_12_embed:Class = Embeds.shellcase012_png;
      
      public static var par13_12:BitmapData = new Embeds.shellcase012_png().bitmapData;
      
      public static var par13_13_embed:Class = Embeds.shellcase013_png;
      
      public static var par13_13:BitmapData = new Embeds.shellcase013_png().bitmapData;
      
      public static var par13_14_embed:Class = Embeds.shellcase014_png;
      
      public static var par13_14:BitmapData = new Embeds.shellcase014_png().bitmapData;
      
      public static var par13_15_embed:Class = Embeds.shellcase015_png;
      
      public static var par13_15:BitmapData = new Embeds.shellcase015_png().bitmapData;
      
      public static var par13_16_embed:Class = Embeds.shellcase016_png;
      
      public static var par13_16:BitmapData = new Embeds.shellcase016_png().bitmapData;
      
      public static var par13_17_embed:Class = Embeds.shellcase017_png;
      
      public static var par13_17:BitmapData = new Embeds.shellcase017_png().bitmapData;
      
      public static var par13_18_embed:Class = Embeds.shellcase018_png;
      
      public static var par13_18:BitmapData = new Embeds.shellcase018_png().bitmapData;
      
      public static var par13_19_embed:Class = Embeds.shellcase019_png;
      
      public static var par13_19:BitmapData = new Embeds.shellcase019_png().bitmapData;
      
      public static var par13_20_embed:Class = Embeds.shellcase020_png;
      
      public static var par13_20:BitmapData = new Embeds.shellcase020_png().bitmapData;
      
      public static var par13_21_embed:Class = Embeds.shellcase021_png;
      
      public static var par13_21:BitmapData = new Embeds.shellcase021_png().bitmapData;
      
      public static var par13_22_embed:Class = Embeds.shellcase022_png;
      
      public static var par13_22:BitmapData = new Embeds.shellcase022_png().bitmapData;
      
      public static var par13_23_embed:Class = Embeds.shellcase023_png;
      
      public static var par13_23:BitmapData = new Embeds.shellcase023_png().bitmapData;
      
      public static var par13_24_embed:Class = Embeds.shellcase024_png;
      
      public static var par13_24:BitmapData = new Embeds.shellcase024_png().bitmapData;
      
      public static var par13:Array = [par13_1,par13_2,par13_3,par13_4,par13_5,par13_6,par13_7,par13_8,par13_9,par13_10,par13_11,par13_12,par13_13,par13_14,par13_15,par13_16,par13_17,par13_18,par13_19,par13_20,par13_21,par13_22,par13_23,par13_24];
      
      public static var par14_1_embed:Class = Embeds.shrapnel001_png;
      
      public static var par14_1:BitmapData = new Embeds.shrapnel001_png().bitmapData;
      
      public static var par14_2_embed:Class = Embeds.shrapnel002_png;
      
      public static var par14_2:BitmapData = new Embeds.shrapnel002_png().bitmapData;
      
      public static var par14_3_embed:Class = Embeds.shrapnel003_png;
      
      public static var par14_3:BitmapData = new Embeds.shrapnel003_png().bitmapData;
      
      public static var par14_4_embed:Class = Embeds.shrapnel004_png;
      
      public static var par14_4:BitmapData = new Embeds.shrapnel004_png().bitmapData;
      
      public static var par14_5_embed:Class = Embeds.shrapnel005_png;
      
      public static var par14_5:BitmapData = new Embeds.shrapnel005_png().bitmapData;
      
      public static var par14_6_embed:Class = Embeds.shrapnel006_png;
      
      public static var par14_6:BitmapData = new Embeds.shrapnel006_png().bitmapData;
      
      public static var par14_7_embed:Class = Embeds.shrapnel007_png;
      
      public static var par14_7:BitmapData = new Embeds.shrapnel007_png().bitmapData;
      
      public static var par14_8_embed:Class = Embeds.shrapnel008_png;
      
      public static var par14_8:BitmapData = new Embeds.shrapnel008_png().bitmapData;
      
      public static var par14_9_embed:Class = Embeds.shrapnel009_png;
      
      public static var par14_9:BitmapData = new Embeds.shrapnel009_png().bitmapData;
      
      public static var par14_10_embed:Class = Embeds.shrapnel010_png;
      
      public static var par14_10:BitmapData = new Embeds.shrapnel010_png().bitmapData;
      
      public static var par14_11_embed:Class = Embeds.shrapnel011_png;
      
      public static var par14_11:BitmapData = new Embeds.shrapnel011_png().bitmapData;
      
      public static var par14_12_embed:Class = Embeds.shrapnel012_png;
      
      public static var par14_12:BitmapData = new Embeds.shrapnel012_png().bitmapData;
      
      public static var par14_13_embed:Class = Embeds.shrapnel013_png;
      
      public static var par14_13:BitmapData = new Embeds.shrapnel013_png().bitmapData;
      
      public static var par14_14_embed:Class = Embeds.shrapnel014_png;
      
      public static var par14_14:BitmapData = new Embeds.shrapnel014_png().bitmapData;
      
      public static var par14_15_embed:Class = Embeds.shrapnel015_png;
      
      public static var par14_15:BitmapData = new Embeds.shrapnel015_png().bitmapData;
      
      public static var par14_16_embed:Class = Embeds.shrapnel016_png;
      
      public static var par14_16:BitmapData = new Embeds.shrapnel016_png().bitmapData;
      
      public static var par14_17_embed:Class = Embeds.shrapnel017_png;
      
      public static var par14_17:BitmapData = new Embeds.shrapnel017_png().bitmapData;
      
      public static var par14_18_embed:Class = Embeds.shrapnel018_png;
      
      public static var par14_18:BitmapData = new Embeds.shrapnel018_png().bitmapData;
      
      public static var par14_19_embed:Class = Embeds.shrapnel019_png;
      
      public static var par14_19:BitmapData = new Embeds.shrapnel019_png().bitmapData;
      
      public static var par14_20_embed:Class = Embeds.shrapnel020_png;
      
      public static var par14_20:BitmapData = new Embeds.shrapnel020_png().bitmapData;
      
      public static var par14_21_embed:Class = Embeds.shrapnel021_png;
      
      public static var par14_21:BitmapData = new Embeds.shrapnel021_png().bitmapData;
      
      public static var par14_22_embed:Class = Embeds.shrapnel022_png;
      
      public static var par14_22:BitmapData = new Embeds.shrapnel022_png().bitmapData;
      
      public static var par14_23_embed:Class = Embeds.shrapnel023_png;
      
      public static var par14_23:BitmapData = new Embeds.shrapnel023_png().bitmapData;
      
      public static var par14_24_embed:Class = Embeds.shrapnel024_png;
      
      public static var par14_24:BitmapData = new Embeds.shrapnel024_png().bitmapData;
      
      public static var par14:Array = [par14_1,par14_2,par14_3,par14_4,par14_5,par14_6,par14_7,par14_8,par14_9,par14_10,par14_11,par14_12,par14_13,par14_14,par14_15,par14_16,par14_17,par14_18,par14_19,par14_20,par14_21,par14_22,par14_23,par14_24];
      
      public static var par15_1_embed:Class = Embeds.shrapnel_2001_png;
      
      public static var par15_1:BitmapData = new Embeds.shrapnel_2001_png().bitmapData;
      
      public static var par15_2_embed:Class = Embeds.shrapnel_2002_png;
      
      public static var par15_2:BitmapData = new Embeds.shrapnel_2002_png().bitmapData;
      
      public static var par15_3_embed:Class = Embeds.shrapnel_2003_png;
      
      public static var par15_3:BitmapData = new Embeds.shrapnel_2003_png().bitmapData;
      
      public static var par15_4_embed:Class = Embeds.shrapnel_2004_png;
      
      public static var par15_4:BitmapData = new Embeds.shrapnel_2004_png().bitmapData;
      
      public static var par15_5_embed:Class = Embeds.shrapnel_2005_png;
      
      public static var par15_5:BitmapData = new Embeds.shrapnel_2005_png().bitmapData;
      
      public static var par15_6_embed:Class = Embeds.shrapnel_2006_png;
      
      public static var par15_6:BitmapData = new Embeds.shrapnel_2006_png().bitmapData;
      
      public static var par15_7_embed:Class = Embeds.shrapnel_2007_png;
      
      public static var par15_7:BitmapData = new Embeds.shrapnel_2007_png().bitmapData;
      
      public static var par15_8_embed:Class = Embeds.shrapnel_2008_png;
      
      public static var par15_8:BitmapData = new Embeds.shrapnel_2008_png().bitmapData;
      
      public static var par15_9_embed:Class = Embeds.shrapnel_2009_png;
      
      public static var par15_9:BitmapData = new Embeds.shrapnel_2009_png().bitmapData;
      
      public static var par15_10_embed:Class = Embeds.shrapnel_2010_png;
      
      public static var par15_10:BitmapData = new Embeds.shrapnel_2010_png().bitmapData;
      
      public static var par15_11_embed:Class = Embeds.shrapnel_2011_png;
      
      public static var par15_11:BitmapData = new Embeds.shrapnel_2011_png().bitmapData;
      
      public static var par15_12_embed:Class = Embeds.shrapnel_2012_png;
      
      public static var par15_12:BitmapData = new Embeds.shrapnel_2012_png().bitmapData;
      
      public static var par15_13_embed:Class = Embeds.shrapnel_2013_png;
      
      public static var par15_13:BitmapData = new Embeds.shrapnel_2013_png().bitmapData;
      
      public static var par15_14_embed:Class = Embeds.shrapnel_2014_png;
      
      public static var par15_14:BitmapData = new Embeds.shrapnel_2014_png().bitmapData;
      
      public static var par15_15_embed:Class = Embeds.shrapnel_2015_png;
      
      public static var par15_15:BitmapData = new Embeds.shrapnel_2015_png().bitmapData;
      
      public static var par15_16_embed:Class = Embeds.shrapnel_2016_png;
      
      public static var par15_16:BitmapData = new Embeds.shrapnel_2016_png().bitmapData;
      
      public static var par15_17_embed:Class = Embeds.shrapnel_2017_png;
      
      public static var par15_17:BitmapData = new Embeds.shrapnel_2017_png().bitmapData;
      
      public static var par15_18_embed:Class = Embeds.shrapnel_2018_png;
      
      public static var par15_18:BitmapData = new Embeds.shrapnel_2018_png().bitmapData;
      
      public static var par15_19_embed:Class = Embeds.shrapnel_2019_png;
      
      public static var par15_19:BitmapData = new Embeds.shrapnel_2019_png().bitmapData;
      
      public static var par15_20_embed:Class = Embeds.shrapnel_2020_png;
      
      public static var par15_20:BitmapData = new Embeds.shrapnel_2020_png().bitmapData;
      
      public static var par15_21_embed:Class = Embeds.shrapnel_2021_png;
      
      public static var par15_21:BitmapData = new Embeds.shrapnel_2021_png().bitmapData;
      
      public static var par15_22_embed:Class = Embeds.shrapnel_2022_png;
      
      public static var par15_22:BitmapData = new Embeds.shrapnel_2022_png().bitmapData;
      
      public static var par15_23_embed:Class = Embeds.shrapnel_2023_png;
      
      public static var par15_23:BitmapData = new Embeds.shrapnel_2023_png().bitmapData;
      
      public static var par15_24_embed:Class = Embeds.shrapnel_2024_png;
      
      public static var par15_24:BitmapData = new Embeds.shrapnel_2024_png().bitmapData;
      
      public static var par15:Array = [par15_1,par15_2,par15_3,par15_4,par15_5,par15_6,par15_7,par15_8,par15_9,par15_10,par15_11,par15_12,par15_13,par15_14,par15_15,par15_16,par15_17,par15_18,par15_19,par15_20,par15_21,par15_22,par15_23,par15_24];
      
      public static var par16_1_embed:Class = Embeds.shrapnel_3001_png;
      
      public static var par16_1:BitmapData = new Embeds.shrapnel_3001_png().bitmapData;
      
      public static var par16_2_embed:Class = Embeds.shrapnel_3002_png;
      
      public static var par16_2:BitmapData = new Embeds.shrapnel_3002_png().bitmapData;
      
      public static var par16_3_embed:Class = Embeds.shrapnel_3003_png;
      
      public static var par16_3:BitmapData = new Embeds.shrapnel_3003_png().bitmapData;
      
      public static var par16_4_embed:Class = Embeds.shrapnel_3004_png;
      
      public static var par16_4:BitmapData = new Embeds.shrapnel_3004_png().bitmapData;
      
      public static var par16_5_embed:Class = Embeds.shrapnel_3005_png;
      
      public static var par16_5:BitmapData = new Embeds.shrapnel_3005_png().bitmapData;
      
      public static var par16_6_embed:Class = Embeds.shrapnel_3006_png;
      
      public static var par16_6:BitmapData = new Embeds.shrapnel_3006_png().bitmapData;
      
      public static var par16_7_embed:Class = Embeds.shrapnel_3007_png;
      
      public static var par16_7:BitmapData = new Embeds.shrapnel_3007_png().bitmapData;
      
      public static var par16_8_embed:Class = Embeds.shrapnel_3008_png;
      
      public static var par16_8:BitmapData = new Embeds.shrapnel_3008_png().bitmapData;
      
      public static var par16_9_embed:Class = Embeds.shrapnel_3009_png;
      
      public static var par16_9:BitmapData = new Embeds.shrapnel_3009_png().bitmapData;
      
      public static var par16_10_embed:Class = Embeds.shrapnel_3010_png;
      
      public static var par16_10:BitmapData = new Embeds.shrapnel_3010_png().bitmapData;
      
      public static var par16_11_embed:Class = Embeds.shrapnel_3011_png;
      
      public static var par16_11:BitmapData = new Embeds.shrapnel_3011_png().bitmapData;
      
      public static var par16_12_embed:Class = Embeds.shrapnel_3012_png;
      
      public static var par16_12:BitmapData = new Embeds.shrapnel_3012_png().bitmapData;
      
      public static var par16_13_embed:Class = Embeds.shrapnel_3013_png;
      
      public static var par16_13:BitmapData = new Embeds.shrapnel_3013_png().bitmapData;
      
      public static var par16_14_embed:Class = Embeds.shrapnel_3014_png;
      
      public static var par16_14:BitmapData = new Embeds.shrapnel_3014_png().bitmapData;
      
      public static var par16_15_embed:Class = Embeds.shrapnel_3015_png;
      
      public static var par16_15:BitmapData = new Embeds.shrapnel_3015_png().bitmapData;
      
      public static var par16_16_embed:Class = Embeds.shrapnel_3016_png;
      
      public static var par16_16:BitmapData = new Embeds.shrapnel_3016_png().bitmapData;
      
      public static var par16_17_embed:Class = Embeds.shrapnel_3017_png;
      
      public static var par16_17:BitmapData = new Embeds.shrapnel_3017_png().bitmapData;
      
      public static var par16_18_embed:Class = Embeds.shrapnel_3018_png;
      
      public static var par16_18:BitmapData = new Embeds.shrapnel_3018_png().bitmapData;
      
      public static var par16_19_embed:Class = Embeds.shrapnel_3019_png;
      
      public static var par16_19:BitmapData = new Embeds.shrapnel_3019_png().bitmapData;
      
      public static var par16_20_embed:Class = Embeds.shrapnel_3020_png;
      
      public static var par16_20:BitmapData = new Embeds.shrapnel_3020_png().bitmapData;
      
      public static var par16_21_embed:Class = Embeds.shrapnel_3021_png;
      
      public static var par16_21:BitmapData = new Embeds.shrapnel_3021_png().bitmapData;
      
      public static var par16_22_embed:Class = Embeds.shrapnel_3022_png;
      
      public static var par16_22:BitmapData = new Embeds.shrapnel_3022_png().bitmapData;
      
      public static var par16_23_embed:Class = Embeds.shrapnel_3023_png;
      
      public static var par16_23:BitmapData = new Embeds.shrapnel_3023_png().bitmapData;
      
      public static var par16_24_embed:Class = Embeds.shrapnel_3024_png;
      
      public static var par16_24:BitmapData = new Embeds.shrapnel_3024_png().bitmapData;
      
      public static var par16:Array = [par16_1,par16_2,par16_3,par16_4,par16_5,par16_6,par16_7,par16_8,par16_9,par16_10,par16_11,par16_12,par16_13,par16_14,par16_15,par16_16,par16_17,par16_18,par16_19,par16_20,par16_21,par16_22,par16_23,par16_24];
      
      public static var par17_embed:Class = Embeds.laserhit_png;
      
      public static var par17:BitmapData = new Embeds.laserhit_png().bitmapData;
      
      public static var par18_embed:Class = Embeds.gastankdestroy_png;
      
      public static var par18:BitmapData = new Embeds.gastankdestroy_png().bitmapData;
      
      public static var par19_embed:Class = Embeds.medkit_png;
      
      public static var par19:BitmapData = new Embeds.medkit_png().bitmapData;
      
      public static var par20_embed:Class = Embeds.gastankdestroy_png;
      
      public static var par20:BitmapData = new Embeds.gastankdestroy_png().bitmapData;
      
      public static var par21_embed:Class = Embeds.laserhit_png;
      
      public static var par21:BitmapData = new Embeds.laserhit_png().bitmapData;
      
      public static var par22_embed:Class = Embeds.teleport_ring_png;
      
      public static var par22:BitmapData = new Embeds.teleport_ring_png().bitmapData;
      
      public static var par23_1_embed:Class = Embeds.smoke_c001_png;
      
      public static var par23_1:BitmapData = new Embeds.smoke_c001_png().bitmapData;
      
      public static var par23_2_embed:Class = Embeds.smoke_c002_png;
      
      public static var par23_2:BitmapData = new Embeds.smoke_c002_png().bitmapData;
      
      public static var par23_3_embed:Class = Embeds.smoke_c003_png;
      
      public static var par23_3:BitmapData = new Embeds.smoke_c003_png().bitmapData;
      
      public static var par23_4_embed:Class = Embeds.smoke_c004_png;
      
      public static var par23_4:BitmapData = new Embeds.smoke_c004_png().bitmapData;
      
      public static var par23_5_embed:Class = Embeds.smoke_c005_png;
      
      public static var par23_5:BitmapData = new Embeds.smoke_c005_png().bitmapData;
      
      public static var par23_6_embed:Class = Embeds.smoke_c006_png;
      
      public static var par23_6:BitmapData = new Embeds.smoke_c006_png().bitmapData;
      
      public static var par23_7_embed:Class = Embeds.smoke_c007_png;
      
      public static var par23_7:BitmapData = new Embeds.smoke_c007_png().bitmapData;
      
      public static var par23_8_embed:Class = Embeds.smoke_c008_png;
      
      public static var par23_8:BitmapData = new Embeds.smoke_c008_png().bitmapData;
      
      public static var par23_9_embed:Class = Embeds.smoke_c009_png;
      
      public static var par23_9:BitmapData = new Embeds.smoke_c009_png().bitmapData;
      
      public static var par23_10_embed:Class = Embeds.smoke_c010_png;
      
      public static var par23_10:BitmapData = new Embeds.smoke_c010_png().bitmapData;
      
      public static var par23_11_embed:Class = Embeds.smoke_c011_png;
      
      public static var par23_11:BitmapData = new Embeds.smoke_c011_png().bitmapData;
      
      public static var par23_12_embed:Class = Embeds.smoke_c012_png;
      
      public static var par23_12:BitmapData = new Embeds.smoke_c012_png().bitmapData;
      
      public static var par23_13_embed:Class = Embeds.smoke_c013_png;
      
      public static var par23_13:BitmapData = new Embeds.smoke_c013_png().bitmapData;
      
      public static var par23_14_embed:Class = Embeds.smoke_c014_png;
      
      public static var par23_14:BitmapData = new Embeds.smoke_c014_png().bitmapData;
      
      public static var par23_15_embed:Class = Embeds.smoke_c015_png;
      
      public static var par23_15:BitmapData = new Embeds.smoke_c015_png().bitmapData;
      
      public static var par23_16_embed:Class = Embeds.smoke_c016_png;
      
      public static var par23_16:BitmapData = new Embeds.smoke_c016_png().bitmapData;
      
      public static var par23:Array = [par23_1,par23_2,par23_3,par23_4,par23_5,par23_6,par23_7,par23_8,par23_9,par23_10,par23_11,par23_12,par23_13,par23_14,par23_15,par23_16];
      
      public static var par24_1_embed:Class = Embeds.smoke_b001_png;
      
      public static var par24_1:BitmapData = new Embeds.smoke_b001_png().bitmapData;
      
      public static var par24_2_embed:Class = Embeds.smoke_b002_png;
      
      public static var par24_2:BitmapData = new Embeds.smoke_b002_png().bitmapData;
      
      public static var par24_3_embed:Class = Embeds.smoke_b003_png;
      
      public static var par24_3:BitmapData = new Embeds.smoke_b003_png().bitmapData;
      
      public static var par24_4_embed:Class = Embeds.smoke_b004_png;
      
      public static var par24_4:BitmapData = new Embeds.smoke_b004_png().bitmapData;
      
      public static var par24_5_embed:Class = Embeds.smoke_b005_png;
      
      public static var par24_5:BitmapData = new Embeds.smoke_b005_png().bitmapData;
      
      public static var par24_6_embed:Class = Embeds.smoke_b006_png;
      
      public static var par24_6:BitmapData = new Embeds.smoke_b006_png().bitmapData;
      
      public static var par24_7_embed:Class = Embeds.smoke_b007_png;
      
      public static var par24_7:BitmapData = new Embeds.smoke_b007_png().bitmapData;
      
      public static var par24_8_embed:Class = Embeds.smoke_b008_png;
      
      public static var par24_8:BitmapData = new Embeds.smoke_b008_png().bitmapData;
      
      public static var par24_9_embed:Class = Embeds.smoke_b009_png;
      
      public static var par24_9:BitmapData = new Embeds.smoke_b009_png().bitmapData;
      
      public static var par24_10_embed:Class = Embeds.smoke_b010_png;
      
      public static var par24_10:BitmapData = new Embeds.smoke_b010_png().bitmapData;
      
      public static var par24_11_embed:Class = Embeds.smoke_b011_png;
      
      public static var par24_11:BitmapData = new Embeds.smoke_b011_png().bitmapData;
      
      public static var par24_12_embed:Class = Embeds.smoke_b012_png;
      
      public static var par24_12:BitmapData = new Embeds.smoke_b012_png().bitmapData;
      
      public static var par24_13_embed:Class = Embeds.smoke_b013_png;
      
      public static var par24_13:BitmapData = new Embeds.smoke_b013_png().bitmapData;
      
      public static var par24_14_embed:Class = Embeds.smoke_b014_png;
      
      public static var par24_14:BitmapData = new Embeds.smoke_b014_png().bitmapData;
      
      public static var par24_15_embed:Class = Embeds.smoke_b015_png;
      
      public static var par24_15:BitmapData = new Embeds.smoke_b015_png().bitmapData;
      
      public static var par24_16_embed:Class = Embeds.smoke_b016_png;
      
      public static var par24_16:BitmapData = new Embeds.smoke_b016_png().bitmapData;
      
      public static var par24:Array = [par24_1,par24_2,par24_3,par24_4,par24_5,par24_6,par24_7,par24_8,par24_9,par24_10,par24_11,par24_12,par24_13,par24_14,par24_15,par24_16];
      
      public static var par25_1_embed:Class = Embeds.p_purple001_png;
      
      public static var par25_1:BitmapData = new Embeds.p_purple001_png().bitmapData;
      
      public static var par25_2_embed:Class = Embeds.p_purple002_png;
      
      public static var par25_2:BitmapData = new Embeds.p_purple002_png().bitmapData;
      
      public static var par25_3_embed:Class = Embeds.p_purple003_png;
      
      public static var par25_3:BitmapData = new Embeds.p_purple003_png().bitmapData;
      
      public static var par25_4_embed:Class = Embeds.p_purple004_png;
      
      public static var par25_4:BitmapData = new Embeds.p_purple004_png().bitmapData;
      
      public static var par25_5_embed:Class = Embeds.p_purple005_png;
      
      public static var par25_5:BitmapData = new Embeds.p_purple005_png().bitmapData;
      
      public static var par25_6_embed:Class = Embeds.p_purple006_png;
      
      public static var par25_6:BitmapData = new Embeds.p_purple006_png().bitmapData;
      
      public static var par25_7_embed:Class = Embeds.p_purple007_png;
      
      public static var par25_7:BitmapData = new Embeds.p_purple007_png().bitmapData;
      
      public static var par25_8_embed:Class = Embeds.p_purple008_png;
      
      public static var par25_8:BitmapData = new Embeds.p_purple008_png().bitmapData;
      
      public static var par25_9_embed:Class = Embeds.p_purple009_png;
      
      public static var par25_9:BitmapData = new Embeds.p_purple009_png().bitmapData;
      
      public static var par25_10_embed:Class = Embeds.p_purple010_png;
      
      public static var par25_10:BitmapData = new Embeds.p_purple010_png().bitmapData;
      
      public static var par25_11_embed:Class = Embeds.p_purple011_png;
      
      public static var par25_11:BitmapData = new Embeds.p_purple011_png().bitmapData;
      
      public static var par25_12_embed:Class = Embeds.p_purple012_png;
      
      public static var par25_12:BitmapData = new Embeds.p_purple012_png().bitmapData;
      
      public static var par25_13_embed:Class = Embeds.p_purple013_png;
      
      public static var par25_13:BitmapData = new Embeds.p_purple013_png().bitmapData;
      
      public static var par25_14_embed:Class = Embeds.p_purple014_png;
      
      public static var par25_14:BitmapData = new Embeds.p_purple014_png().bitmapData;
      
      public static var par25_15_embed:Class = Embeds.p_purple015_png;
      
      public static var par25_15:BitmapData = new Embeds.p_purple015_png().bitmapData;
      
      public static var par25_16_embed:Class = Embeds.p_purple016_png;
      
      public static var par25_16:BitmapData = new Embeds.p_purple016_png().bitmapData;
      
      public static var par25_17_embed:Class = Embeds.p_purple017_png;
      
      public static var par25_17:BitmapData = new Embeds.p_purple017_png().bitmapData;
      
      public static var par25_18_embed:Class = Embeds.p_purple018_png;
      
      public static var par25_18:BitmapData = new Embeds.p_purple018_png().bitmapData;
      
      public static var par25_19_embed:Class = Embeds.p_purple019_png;
      
      public static var par25_19:BitmapData = new Embeds.p_purple019_png().bitmapData;
      
      public static var par25_20_embed:Class = Embeds.p_purple020_png;
      
      public static var par25_20:BitmapData = new Embeds.p_purple020_png().bitmapData;
      
      public static var par25_21_embed:Class = Embeds.p_purple021_png;
      
      public static var par25_21:BitmapData = new Embeds.p_purple021_png().bitmapData;
      
      public static var par25_22_embed:Class = Embeds.p_purple022_png;
      
      public static var par25_22:BitmapData = new Embeds.p_purple022_png().bitmapData;
      
      public static var par25_23_embed:Class = Embeds.p_purple023_png;
      
      public static var par25_23:BitmapData = new Embeds.p_purple023_png().bitmapData;
      
      public static var par25_24_embed:Class = Embeds.p_purple024_png;
      
      public static var par25_24:BitmapData = new Embeds.p_purple024_png().bitmapData;
      
      public static var par25:Array = [par25_1,par25_2,par25_3,par25_4,par25_5,par25_6,par25_7,par25_8,par25_9,par25_10,par25_11,par25_12,par25_13,par25_14,par25_15,par25_16,par25_17,par25_18,par25_19,par25_20,par25_21,par25_22,par25_23,par25_24];
      
      public static var par26_1_embed:Class = Embeds.p_purple001_png;
      
      public static var par26_1:BitmapData = new Embeds.p_purple001_png().bitmapData;
      
      public static var par26_2_embed:Class = Embeds.p_purple002_png;
      
      public static var par26_2:BitmapData = new Embeds.p_purple002_png().bitmapData;
      
      public static var par26_3_embed:Class = Embeds.p_purple003_png;
      
      public static var par26_3:BitmapData = new Embeds.p_purple003_png().bitmapData;
      
      public static var par26_4_embed:Class = Embeds.p_purple004_png;
      
      public static var par26_4:BitmapData = new Embeds.p_purple004_png().bitmapData;
      
      public static var par26_5_embed:Class = Embeds.p_purple005_png;
      
      public static var par26_5:BitmapData = new Embeds.p_purple005_png().bitmapData;
      
      public static var par26_6_embed:Class = Embeds.p_purple006_png;
      
      public static var par26_6:BitmapData = new Embeds.p_purple006_png().bitmapData;
      
      public static var par26_7_embed:Class = Embeds.p_purple007_png;
      
      public static var par26_7:BitmapData = new Embeds.p_purple007_png().bitmapData;
      
      public static var par26_8_embed:Class = Embeds.p_purple008_png;
      
      public static var par26_8:BitmapData = new Embeds.p_purple008_png().bitmapData;
      
      public static var par26_9_embed:Class = Embeds.p_purple009_png;
      
      public static var par26_9:BitmapData = new Embeds.p_purple009_png().bitmapData;
      
      public static var par26_10_embed:Class = Embeds.p_purple010_png;
      
      public static var par26_10:BitmapData = new Embeds.p_purple010_png().bitmapData;
      
      public static var par26_11_embed:Class = Embeds.p_purple011_png;
      
      public static var par26_11:BitmapData = new Embeds.p_purple011_png().bitmapData;
      
      public static var par26_12_embed:Class = Embeds.p_purple012_png;
      
      public static var par26_12:BitmapData = new Embeds.p_purple012_png().bitmapData;
      
      public static var par26_13_embed:Class = Embeds.p_purple013_png;
      
      public static var par26_13:BitmapData = new Embeds.p_purple013_png().bitmapData;
      
      public static var par26_14_embed:Class = Embeds.p_purple014_png;
      
      public static var par26_14:BitmapData = new Embeds.p_purple014_png().bitmapData;
      
      public static var par26_15_embed:Class = Embeds.p_purple015_png;
      
      public static var par26_15:BitmapData = new Embeds.p_purple015_png().bitmapData;
      
      public static var par26_16_embed:Class = Embeds.p_purple016_png;
      
      public static var par26_16:BitmapData = new Embeds.p_purple016_png().bitmapData;
      
      public static var par26_17_embed:Class = Embeds.p_purple017_png;
      
      public static var par26_17:BitmapData = new Embeds.p_purple017_png().bitmapData;
      
      public static var par26_18_embed:Class = Embeds.p_purple018_png;
      
      public static var par26_18:BitmapData = new Embeds.p_purple018_png().bitmapData;
      
      public static var par26_19_embed:Class = Embeds.p_purple019_png;
      
      public static var par26_19:BitmapData = new Embeds.p_purple019_png().bitmapData;
      
      public static var par26_20_embed:Class = Embeds.p_purple020_png;
      
      public static var par26_20:BitmapData = new Embeds.p_purple020_png().bitmapData;
      
      public static var par26_21_embed:Class = Embeds.p_purple021_png;
      
      public static var par26_21:BitmapData = new Embeds.p_purple021_png().bitmapData;
      
      public static var par26_22_embed:Class = Embeds.p_purple022_png;
      
      public static var par26_22:BitmapData = new Embeds.p_purple022_png().bitmapData;
      
      public static var par26_23_embed:Class = Embeds.p_purple023_png;
      
      public static var par26_23:BitmapData = new Embeds.p_purple023_png().bitmapData;
      
      public static var par26_24_embed:Class = Embeds.p_purple024_png;
      
      public static var par26_24:BitmapData = new Embeds.p_purple024_png().bitmapData;
      
      public static var par26:Array = [par26_1,par26_2,par26_3,par26_4,par26_5,par26_6,par26_7,par26_8,par26_9,par26_10,par26_11,par26_12,par26_13,par26_14,par26_15,par26_16,par26_17,par26_18,par26_19,par26_20,par26_21,par26_22,par26_23,par26_24];
      
      public static var par27_embed:Class = Embeds.shield_low_png;
      
      public static var par27:BitmapData = new Embeds.shield_low_png().bitmapData;
      
      public static var par28_embed:Class = Embeds.shield_low_png;
      
      public static var par28:BitmapData = new Embeds.shield_low_png().bitmapData;
      
      public static var par29_embed:Class = Embeds.pulse_flash_png;
      
      public static var par29:BitmapData = new Embeds.pulse_flash_png().bitmapData;
      
      public static var par30_1_embed:Class = Embeds.p_purple001_png;
      
      public static var par30_1:BitmapData = new Embeds.p_purple001_png().bitmapData;
      
      public static var par30_2_embed:Class = Embeds.p_purple002_png;
      
      public static var par30_2:BitmapData = new Embeds.p_purple002_png().bitmapData;
      
      public static var par30_3_embed:Class = Embeds.p_purple003_png;
      
      public static var par30_3:BitmapData = new Embeds.p_purple003_png().bitmapData;
      
      public static var par30_4_embed:Class = Embeds.p_purple004_png;
      
      public static var par30_4:BitmapData = new Embeds.p_purple004_png().bitmapData;
      
      public static var par30_5_embed:Class = Embeds.p_purple005_png;
      
      public static var par30_5:BitmapData = new Embeds.p_purple005_png().bitmapData;
      
      public static var par30_6_embed:Class = Embeds.p_purple006_png;
      
      public static var par30_6:BitmapData = new Embeds.p_purple006_png().bitmapData;
      
      public static var par30_7_embed:Class = Embeds.p_purple007_png;
      
      public static var par30_7:BitmapData = new Embeds.p_purple007_png().bitmapData;
      
      public static var par30_8_embed:Class = Embeds.p_purple008_png;
      
      public static var par30_8:BitmapData = new Embeds.p_purple008_png().bitmapData;
      
      public static var par30_9_embed:Class = Embeds.p_purple009_png;
      
      public static var par30_9:BitmapData = new Embeds.p_purple009_png().bitmapData;
      
      public static var par30_10_embed:Class = Embeds.p_purple010_png;
      
      public static var par30_10:BitmapData = new Embeds.p_purple010_png().bitmapData;
      
      public static var par30_11_embed:Class = Embeds.p_purple011_png;
      
      public static var par30_11:BitmapData = new Embeds.p_purple011_png().bitmapData;
      
      public static var par30_12_embed:Class = Embeds.p_purple012_png;
      
      public static var par30_12:BitmapData = new Embeds.p_purple012_png().bitmapData;
      
      public static var par30_13_embed:Class = Embeds.p_purple013_png;
      
      public static var par30_13:BitmapData = new Embeds.p_purple013_png().bitmapData;
      
      public static var par30_14_embed:Class = Embeds.p_purple014_png;
      
      public static var par30_14:BitmapData = new Embeds.p_purple014_png().bitmapData;
      
      public static var par30_15_embed:Class = Embeds.p_purple015_png;
      
      public static var par30_15:BitmapData = new Embeds.p_purple015_png().bitmapData;
      
      public static var par30_16_embed:Class = Embeds.p_purple016_png;
      
      public static var par30_16:BitmapData = new Embeds.p_purple016_png().bitmapData;
      
      public static var par30_17_embed:Class = Embeds.p_purple017_png;
      
      public static var par30_17:BitmapData = new Embeds.p_purple017_png().bitmapData;
      
      public static var par30_18_embed:Class = Embeds.p_purple018_png;
      
      public static var par30_18:BitmapData = new Embeds.p_purple018_png().bitmapData;
      
      public static var par30_19_embed:Class = Embeds.p_purple019_png;
      
      public static var par30_19:BitmapData = new Embeds.p_purple019_png().bitmapData;
      
      public static var par30_20_embed:Class = Embeds.p_purple020_png;
      
      public static var par30_20:BitmapData = new Embeds.p_purple020_png().bitmapData;
      
      public static var par30_21_embed:Class = Embeds.p_purple021_png;
      
      public static var par30_21:BitmapData = new Embeds.p_purple021_png().bitmapData;
      
      public static var par30_22_embed:Class = Embeds.p_purple022_png;
      
      public static var par30_22:BitmapData = new Embeds.p_purple022_png().bitmapData;
      
      public static var par30_23_embed:Class = Embeds.p_purple023_png;
      
      public static var par30_23:BitmapData = new Embeds.p_purple023_png().bitmapData;
      
      public static var par30_24_embed:Class = Embeds.p_purple024_png;
      
      public static var par30_24:BitmapData = new Embeds.p_purple024_png().bitmapData;
      
      public static var par30:Array = [par30_1,par30_2,par30_3,par30_4,par30_5,par30_6,par30_7,par30_8,par30_9,par30_10,par30_11,par30_12,par30_13,par30_14,par30_15,par30_16,par30_17,par30_18,par30_19,par30_20,par30_21,par30_22,par30_23,par30_24];
      
      public static var par31_1_embed:Class = Embeds.ringanimb001_png;
      
      public static var par31_1:BitmapData = new Embeds.ringanimb001_png().bitmapData;
      
      public static var par31_2_embed:Class = Embeds.ringanimb002_png;
      
      public static var par31_2:BitmapData = new Embeds.ringanimb002_png().bitmapData;
      
      public static var par31_3_embed:Class = Embeds.ringanimb003_png;
      
      public static var par31_3:BitmapData = new Embeds.ringanimb003_png().bitmapData;
      
      public static var par31_4_embed:Class = Embeds.ringanimb004_png;
      
      public static var par31_4:BitmapData = new Embeds.ringanimb004_png().bitmapData;
      
      public static var par31_5_embed:Class = Embeds.ringanimb005_png;
      
      public static var par31_5:BitmapData = new Embeds.ringanimb005_png().bitmapData;
      
      public static var par31_6_embed:Class = Embeds.ringanimb006_png;
      
      public static var par31_6:BitmapData = new Embeds.ringanimb006_png().bitmapData;
      
      public static var par31_7_embed:Class = Embeds.ringanimb007_png;
      
      public static var par31_7:BitmapData = new Embeds.ringanimb007_png().bitmapData;
      
      public static var par31_8_embed:Class = Embeds.ringanimb008_png;
      
      public static var par31_8:BitmapData = new Embeds.ringanimb008_png().bitmapData;
      
      public static var par31_9_embed:Class = Embeds.ringanimb009_png;
      
      public static var par31_9:BitmapData = new Embeds.ringanimb009_png().bitmapData;
      
      public static var par31_10_embed:Class = Embeds.ringanimb010_png;
      
      public static var par31_10:BitmapData = new Embeds.ringanimb010_png().bitmapData;
      
      public static var par31_11_embed:Class = Embeds.ringanimb011_png;
      
      public static var par31_11:BitmapData = new Embeds.ringanimb011_png().bitmapData;
      
      public static var par31:Array = [par31_1,par31_2,par31_3,par31_4,par31_5,par31_6,par31_7,par31_8,par31_9,par31_10,par31_11];
      
      public static var par32_1_embed:Class = Embeds.rancorblast_001_png;
      
      public static var par32_1:BitmapData = new Embeds.rancorblast_001_png().bitmapData;
      
      public static var par32_2_embed:Class = Embeds.rancorblast_002_png;
      
      public static var par32_2:BitmapData = new Embeds.rancorblast_002_png().bitmapData;
      
      public static var par32_3_embed:Class = Embeds.rancorblast_003_png;
      
      public static var par32_3:BitmapData = new Embeds.rancorblast_003_png().bitmapData;
      
      public static var par32_4_embed:Class = Embeds.rancorblast_004_png;
      
      public static var par32_4:BitmapData = new Embeds.rancorblast_004_png().bitmapData;
      
      public static var par32_5_embed:Class = Embeds.rancorblast_005_png;
      
      public static var par32_5:BitmapData = new Embeds.rancorblast_005_png().bitmapData;
      
      public static var par32_6_embed:Class = Embeds.rancorblast_006_png;
      
      public static var par32_6:BitmapData = new Embeds.rancorblast_006_png().bitmapData;
      
      public static var par32_7_embed:Class = Embeds.rancorblast_007_png;
      
      public static var par32_7:BitmapData = new Embeds.rancorblast_007_png().bitmapData;
      
      public static var par32_8_embed:Class = Embeds.rancorblast_008_png;
      
      public static var par32_8:BitmapData = new Embeds.rancorblast_008_png().bitmapData;
      
      public static var par32_9_embed:Class = Embeds.rancorblast_009_png;
      
      public static var par32_9:BitmapData = new Embeds.rancorblast_009_png().bitmapData;
      
      public static var par32_10_embed:Class = Embeds.rancorblast_010_png;
      
      public static var par32_10:BitmapData = new Embeds.rancorblast_010_png().bitmapData;
      
      public static var par32_11_embed:Class = Embeds.rancorblast_011_png;
      
      public static var par32_11:BitmapData = new Embeds.rancorblast_011_png().bitmapData;
      
      public static var par32_12_embed:Class = Embeds.rancorblast_012_png;
      
      public static var par32_12:BitmapData = new Embeds.rancorblast_012_png().bitmapData;
      
      public static var par32_13_embed:Class = Embeds.rancorblast_013_png;
      
      public static var par32_13:BitmapData = new Embeds.rancorblast_013_png().bitmapData;
      
      public static var par32_14_embed:Class = Embeds.rancorblast_014_png;
      
      public static var par32_14:BitmapData = new Embeds.rancorblast_014_png().bitmapData;
      
      public static var par32_15_embed:Class = Embeds.rancorblast_015_png;
      
      public static var par32_15:BitmapData = new Embeds.rancorblast_015_png().bitmapData;
      
      public static var par32_16_embed:Class = Embeds.rancorblast_016_png;
      
      public static var par32_16:BitmapData = new Embeds.rancorblast_016_png().bitmapData;
      
      public static var par32_17_embed:Class = Embeds.rancorblast_017_png;
      
      public static var par32_17:BitmapData = new Embeds.rancorblast_017_png().bitmapData;
      
      public static var par32_18_embed:Class = Embeds.rancorblast_018_png;
      
      public static var par32_18:BitmapData = new Embeds.rancorblast_018_png().bitmapData;
      
      public static var par32_19_embed:Class = Embeds.rancorblast_019_png;
      
      public static var par32_19:BitmapData = new Embeds.rancorblast_019_png().bitmapData;
      
      public static var par32_20_embed:Class = Embeds.rancorblast_020_png;
      
      public static var par32_20:BitmapData = new Embeds.rancorblast_020_png().bitmapData;
      
      public static var par32_21_embed:Class = Embeds.rancorblast_021_png;
      
      public static var par32_21:BitmapData = new Embeds.rancorblast_021_png().bitmapData;
      
      public static var par32_22_embed:Class = Embeds.rancorblast_022_png;
      
      public static var par32_22:BitmapData = new Embeds.rancorblast_022_png().bitmapData;
      
      public static var par32_23_embed:Class = Embeds.rancorblast_023_png;
      
      public static var par32_23:BitmapData = new Embeds.rancorblast_023_png().bitmapData;
      
      public static var par32_24_embed:Class = Embeds.rancorblast_024_png;
      
      public static var par32_24:BitmapData = new Embeds.rancorblast_024_png().bitmapData;
      
      public static var par32_25_embed:Class = Embeds.rancorblast_025_png;
      
      public static var par32_25:BitmapData = new Embeds.rancorblast_025_png().bitmapData;
      
      public static var par32_26_embed:Class = Embeds.rancorblast_026_png;
      
      public static var par32_26:BitmapData = new Embeds.rancorblast_026_png().bitmapData;
      
      public static var par32_27_embed:Class = Embeds.rancorblast_027_png;
      
      public static var par32_27:BitmapData = new Embeds.rancorblast_027_png().bitmapData;
      
      public static var par32_28_embed:Class = Embeds.rancorblast_028_png;
      
      public static var par32_28:BitmapData = new Embeds.rancorblast_028_png().bitmapData;
      
      public static var par32_29_embed:Class = Embeds.rancorblast_029_png;
      
      public static var par32_29:BitmapData = new Embeds.rancorblast_029_png().bitmapData;
      
      public static var par32_30_embed:Class = Embeds.rancorblast_030_png;
      
      public static var par32_30:BitmapData = new Embeds.rancorblast_030_png().bitmapData;
      
      public static var par32_31_embed:Class = Embeds.rancorblast_031_png;
      
      public static var par32_31:BitmapData = new Embeds.rancorblast_031_png().bitmapData;
      
      public static var par32_32_embed:Class = Embeds.rancorblast_032_png;
      
      public static var par32_32:BitmapData = new Embeds.rancorblast_032_png().bitmapData;
      
      public static var par32:Array = [par32_1,par32_2,par32_3,par32_4,par32_5,par32_6,par32_7,par32_8,par32_9,par32_10,par32_11,par32_12,par32_13,par32_14,par32_15,par32_16,par32_17,par32_18,par32_19,par32_20,par32_21,par32_22,par32_23,par32_24,par32_25,par32_26,par32_27,par32_28,par32_29,par32_30,par32_31,par32_32];
      
      public static var par33_1_embed:Class = Embeds.smoke_d001_png;
      
      public static var par33_1:BitmapData = new Embeds.smoke_d001_png().bitmapData;
      
      public static var par33_2_embed:Class = Embeds.smoke_d002_png;
      
      public static var par33_2:BitmapData = new Embeds.smoke_d002_png().bitmapData;
      
      public static var par33_3_embed:Class = Embeds.smoke_d003_png;
      
      public static var par33_3:BitmapData = new Embeds.smoke_d003_png().bitmapData;
      
      public static var par33_4_embed:Class = Embeds.smoke_d004_png;
      
      public static var par33_4:BitmapData = new Embeds.smoke_d004_png().bitmapData;
      
      public static var par33_5_embed:Class = Embeds.smoke_d005_png;
      
      public static var par33_5:BitmapData = new Embeds.smoke_d005_png().bitmapData;
      
      public static var par33_6_embed:Class = Embeds.smoke_d006_png;
      
      public static var par33_6:BitmapData = new Embeds.smoke_d006_png().bitmapData;
      
      public static var par33_7_embed:Class = Embeds.smoke_d007_png;
      
      public static var par33_7:BitmapData = new Embeds.smoke_d007_png().bitmapData;
      
      public static var par33_8_embed:Class = Embeds.smoke_d008_png;
      
      public static var par33_8:BitmapData = new Embeds.smoke_d008_png().bitmapData;
      
      public static var par33_9_embed:Class = Embeds.smoke_d009_png;
      
      public static var par33_9:BitmapData = new Embeds.smoke_d009_png().bitmapData;
      
      public static var par33_10_embed:Class = Embeds.smoke_d010_png;
      
      public static var par33_10:BitmapData = new Embeds.smoke_d010_png().bitmapData;
      
      public static var par33_11_embed:Class = Embeds.smoke_d011_png;
      
      public static var par33_11:BitmapData = new Embeds.smoke_d011_png().bitmapData;
      
      public static var par33_12_embed:Class = Embeds.smoke_d012_png;
      
      public static var par33_12:BitmapData = new Embeds.smoke_d012_png().bitmapData;
      
      public static var par33_13_embed:Class = Embeds.smoke_d013_png;
      
      public static var par33_13:BitmapData = new Embeds.smoke_d013_png().bitmapData;
      
      public static var par33_14_embed:Class = Embeds.smoke_d014_png;
      
      public static var par33_14:BitmapData = new Embeds.smoke_d014_png().bitmapData;
      
      public static var par33_15_embed:Class = Embeds.smoke_d015_png;
      
      public static var par33_15:BitmapData = new Embeds.smoke_d015_png().bitmapData;
      
      public static var par33_16_embed:Class = Embeds.smoke_d016_png;
      
      public static var par33_16:BitmapData = new Embeds.smoke_d016_png().bitmapData;
      
      public static var par33:Array = [par33_1,par33_2,par33_3,par33_4,par33_5,par33_6,par33_7,par33_8,par33_9,par33_10,par33_11,par33_12,par33_13,par33_14,par33_15,par33_16];
      
      public static var par34_1_embed:Class = Embeds.p_purple001_png;
      
      public static var par34_1:BitmapData = new Embeds.p_purple001_png().bitmapData;
      
      public static var par34_2_embed:Class = Embeds.p_purple002_png;
      
      public static var par34_2:BitmapData = new Embeds.p_purple002_png().bitmapData;
      
      public static var par34_3_embed:Class = Embeds.p_purple003_png;
      
      public static var par34_3:BitmapData = new Embeds.p_purple003_png().bitmapData;
      
      public static var par34_4_embed:Class = Embeds.p_purple004_png;
      
      public static var par34_4:BitmapData = new Embeds.p_purple004_png().bitmapData;
      
      public static var par34_5_embed:Class = Embeds.p_purple005_png;
      
      public static var par34_5:BitmapData = new Embeds.p_purple005_png().bitmapData;
      
      public static var par34_6_embed:Class = Embeds.p_purple006_png;
      
      public static var par34_6:BitmapData = new Embeds.p_purple006_png().bitmapData;
      
      public static var par34_7_embed:Class = Embeds.p_purple007_png;
      
      public static var par34_7:BitmapData = new Embeds.p_purple007_png().bitmapData;
      
      public static var par34_8_embed:Class = Embeds.p_purple008_png;
      
      public static var par34_8:BitmapData = new Embeds.p_purple008_png().bitmapData;
      
      public static var par34_9_embed:Class = Embeds.p_purple009_png;
      
      public static var par34_9:BitmapData = new Embeds.p_purple009_png().bitmapData;
      
      public static var par34_10_embed:Class = Embeds.p_purple010_png;
      
      public static var par34_10:BitmapData = new Embeds.p_purple010_png().bitmapData;
      
      public static var par34_11_embed:Class = Embeds.p_purple011_png;
      
      public static var par34_11:BitmapData = new Embeds.p_purple011_png().bitmapData;
      
      public static var par34_12_embed:Class = Embeds.p_purple012_png;
      
      public static var par34_12:BitmapData = new Embeds.p_purple012_png().bitmapData;
      
      public static var par34_13_embed:Class = Embeds.p_purple013_png;
      
      public static var par34_13:BitmapData = new Embeds.p_purple013_png().bitmapData;
      
      public static var par34_14_embed:Class = Embeds.p_purple014_png;
      
      public static var par34_14:BitmapData = new Embeds.p_purple014_png().bitmapData;
      
      public static var par34_15_embed:Class = Embeds.p_purple015_png;
      
      public static var par34_15:BitmapData = new Embeds.p_purple015_png().bitmapData;
      
      public static var par34_16_embed:Class = Embeds.p_purple016_png;
      
      public static var par34_16:BitmapData = new Embeds.p_purple016_png().bitmapData;
      
      public static var par34_17_embed:Class = Embeds.p_purple017_png;
      
      public static var par34_17:BitmapData = new Embeds.p_purple017_png().bitmapData;
      
      public static var par34_18_embed:Class = Embeds.p_purple018_png;
      
      public static var par34_18:BitmapData = new Embeds.p_purple018_png().bitmapData;
      
      public static var par34_19_embed:Class = Embeds.p_purple019_png;
      
      public static var par34_19:BitmapData = new Embeds.p_purple019_png().bitmapData;
      
      public static var par34_20_embed:Class = Embeds.p_purple020_png;
      
      public static var par34_20:BitmapData = new Embeds.p_purple020_png().bitmapData;
      
      public static var par34_21_embed:Class = Embeds.p_purple021_png;
      
      public static var par34_21:BitmapData = new Embeds.p_purple021_png().bitmapData;
      
      public static var par34_22_embed:Class = Embeds.p_purple022_png;
      
      public static var par34_22:BitmapData = new Embeds.p_purple022_png().bitmapData;
      
      public static var par34_23_embed:Class = Embeds.p_purple023_png;
      
      public static var par34_23:BitmapData = new Embeds.p_purple023_png().bitmapData;
      
      public static var par34_24_embed:Class = Embeds.p_purple024_png;
      
      public static var par34_24:BitmapData = new Embeds.p_purple024_png().bitmapData;
      
      public static var par34:Array = [par34_1,par34_2,par34_3,par34_4,par34_5,par34_6,par34_7,par34_8,par34_9,par34_10,par34_11,par34_12,par34_13,par34_14,par34_15,par34_16,par34_17,par34_18,par34_19,par34_20,par34_21,par34_22,par34_23,par34_24];
      
      public static var par35_1_embed:Class = Embeds.smoke_c001_png;
      
      public static var par35_1:BitmapData = new Embeds.smoke_c001_png().bitmapData;
      
      public static var par35_2_embed:Class = Embeds.smoke_c002_png;
      
      public static var par35_2:BitmapData = new Embeds.smoke_c002_png().bitmapData;
      
      public static var par35_3_embed:Class = Embeds.smoke_c003_png;
      
      public static var par35_3:BitmapData = new Embeds.smoke_c003_png().bitmapData;
      
      public static var par35_4_embed:Class = Embeds.smoke_c004_png;
      
      public static var par35_4:BitmapData = new Embeds.smoke_c004_png().bitmapData;
      
      public static var par35_5_embed:Class = Embeds.smoke_c005_png;
      
      public static var par35_5:BitmapData = new Embeds.smoke_c005_png().bitmapData;
      
      public static var par35_6_embed:Class = Embeds.smoke_c006_png;
      
      public static var par35_6:BitmapData = new Embeds.smoke_c006_png().bitmapData;
      
      public static var par35_7_embed:Class = Embeds.smoke_c007_png;
      
      public static var par35_7:BitmapData = new Embeds.smoke_c007_png().bitmapData;
      
      public static var par35_8_embed:Class = Embeds.smoke_c008_png;
      
      public static var par35_8:BitmapData = new Embeds.smoke_c008_png().bitmapData;
      
      public static var par35_9_embed:Class = Embeds.smoke_c009_png;
      
      public static var par35_9:BitmapData = new Embeds.smoke_c009_png().bitmapData;
      
      public static var par35_10_embed:Class = Embeds.smoke_c010_png;
      
      public static var par35_10:BitmapData = new Embeds.smoke_c010_png().bitmapData;
      
      public static var par35_11_embed:Class = Embeds.smoke_c011_png;
      
      public static var par35_11:BitmapData = new Embeds.smoke_c011_png().bitmapData;
      
      public static var par35_12_embed:Class = Embeds.smoke_c012_png;
      
      public static var par35_12:BitmapData = new Embeds.smoke_c012_png().bitmapData;
      
      public static var par35_13_embed:Class = Embeds.smoke_c013_png;
      
      public static var par35_13:BitmapData = new Embeds.smoke_c013_png().bitmapData;
      
      public static var par35_14_embed:Class = Embeds.smoke_c014_png;
      
      public static var par35_14:BitmapData = new Embeds.smoke_c014_png().bitmapData;
      
      public static var par35_15_embed:Class = Embeds.smoke_c015_png;
      
      public static var par35_15:BitmapData = new Embeds.smoke_c015_png().bitmapData;
      
      public static var par35_16_embed:Class = Embeds.smoke_c016_png;
      
      public static var par35_16:BitmapData = new Embeds.smoke_c016_png().bitmapData;
      
      public static var par35:Array = [par35_1,par35_2,par35_3,par35_4,par35_5,par35_6,par35_7,par35_8,par35_9,par35_10,par35_11,par35_12,par35_13,par35_14,par35_15,par35_16];
      
      public static var par36_1_embed:Class = Embeds.p_purple001_png;
      
      public static var par36_1:BitmapData = new Embeds.p_purple001_png().bitmapData;
      
      public static var par36_2_embed:Class = Embeds.p_purple002_png;
      
      public static var par36_2:BitmapData = new Embeds.p_purple002_png().bitmapData;
      
      public static var par36_3_embed:Class = Embeds.p_purple003_png;
      
      public static var par36_3:BitmapData = new Embeds.p_purple003_png().bitmapData;
      
      public static var par36_4_embed:Class = Embeds.p_purple004_png;
      
      public static var par36_4:BitmapData = new Embeds.p_purple004_png().bitmapData;
      
      public static var par36_5_embed:Class = Embeds.p_purple005_png;
      
      public static var par36_5:BitmapData = new Embeds.p_purple005_png().bitmapData;
      
      public static var par36_6_embed:Class = Embeds.p_purple006_png;
      
      public static var par36_6:BitmapData = new Embeds.p_purple006_png().bitmapData;
      
      public static var par36_7_embed:Class = Embeds.p_purple007_png;
      
      public static var par36_7:BitmapData = new Embeds.p_purple007_png().bitmapData;
      
      public static var par36_8_embed:Class = Embeds.p_purple008_png;
      
      public static var par36_8:BitmapData = new Embeds.p_purple008_png().bitmapData;
      
      public static var par36_9_embed:Class = Embeds.p_purple009_png;
      
      public static var par36_9:BitmapData = new Embeds.p_purple009_png().bitmapData;
      
      public static var par36_10_embed:Class = Embeds.p_purple010_png;
      
      public static var par36_10:BitmapData = new Embeds.p_purple010_png().bitmapData;
      
      public static var par36_11_embed:Class = Embeds.p_purple011_png;
      
      public static var par36_11:BitmapData = new Embeds.p_purple011_png().bitmapData;
      
      public static var par36_12_embed:Class = Embeds.p_purple012_png;
      
      public static var par36_12:BitmapData = new Embeds.p_purple012_png().bitmapData;
      
      public static var par36_13_embed:Class = Embeds.p_purple013_png;
      
      public static var par36_13:BitmapData = new Embeds.p_purple013_png().bitmapData;
      
      public static var par36_14_embed:Class = Embeds.p_purple014_png;
      
      public static var par36_14:BitmapData = new Embeds.p_purple014_png().bitmapData;
      
      public static var par36_15_embed:Class = Embeds.p_purple015_png;
      
      public static var par36_15:BitmapData = new Embeds.p_purple015_png().bitmapData;
      
      public static var par36_16_embed:Class = Embeds.p_purple016_png;
      
      public static var par36_16:BitmapData = new Embeds.p_purple016_png().bitmapData;
      
      public static var par36_17_embed:Class = Embeds.p_purple017_png;
      
      public static var par36_17:BitmapData = new Embeds.p_purple017_png().bitmapData;
      
      public static var par36_18_embed:Class = Embeds.p_purple018_png;
      
      public static var par36_18:BitmapData = new Embeds.p_purple018_png().bitmapData;
      
      public static var par36_19_embed:Class = Embeds.p_purple019_png;
      
      public static var par36_19:BitmapData = new Embeds.p_purple019_png().bitmapData;
      
      public static var par36_20_embed:Class = Embeds.p_purple020_png;
      
      public static var par36_20:BitmapData = new Embeds.p_purple020_png().bitmapData;
      
      public static var par36_21_embed:Class = Embeds.p_purple021_png;
      
      public static var par36_21:BitmapData = new Embeds.p_purple021_png().bitmapData;
      
      public static var par36_22_embed:Class = Embeds.p_purple022_png;
      
      public static var par36_22:BitmapData = new Embeds.p_purple022_png().bitmapData;
      
      public static var par36_23_embed:Class = Embeds.p_purple023_png;
      
      public static var par36_23:BitmapData = new Embeds.p_purple023_png().bitmapData;
      
      public static var par36_24_embed:Class = Embeds.p_purple024_png;
      
      public static var par36_24:BitmapData = new Embeds.p_purple024_png().bitmapData;
      
      public static var par36:Array = [par36_1,par36_2,par36_3,par36_4,par36_5,par36_6,par36_7,par36_8,par36_9,par36_10,par36_11,par36_12,par36_13,par36_14,par36_15,par36_16,par36_17,par36_18,par36_19,par36_20,par36_21,par36_22,par36_23,par36_24];
      
      public function globalParticles()
      {
         super();
      }
      
      public static function constructParticles() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:ParticleEmitter = null;
         var _loc3_:ParticleFilter = null;
         _loc1_ = new Array();
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "EnemyHit";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 149;
         _loc2_.lifehigh = 224;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = -5;
         _loc2_.xspeedhigh = 5;
         _loc2_.yspeedlow = -5;
         _loc2_.yspeedhigh = 5;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 2;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0240000002;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "p-purple***.png";
         _loc2_.image = par1_1_embed;
         _loc2_.imageSet = par1;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Destroy";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 126;
         _loc2_.lifehigh = 155;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 1;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0450000018;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "smoke-d***.png";
         _loc2_.image = par2_1_embed;
         _loc2_.imageSet = par2;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Shoot";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 5;
         _loc2_.lifehigh = 5;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 1;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "gun-flash.png";
         _loc2_.image = par3_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "LaserHit";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 47;
         _loc2_.lifehigh = 48;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 1;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "ringanim***.png";
         _loc2_.image = par4_1_embed;
         _loc2_.imageSet = par4;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "LaserShoot";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 5;
         _loc2_.lifehigh = 5;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 1;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "laser-flash.png";
         _loc2_.image = par5_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Destroy";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 15;
         _loc2_.lifelow = 129;
         _loc2_.lifehigh = 224;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = -5;
         _loc2_.xspeedhigh = 5;
         _loc2_.yspeedlow = -5;
         _loc2_.yspeedhigh = 5;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 2;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0240000002;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "p-purple***.png";
         _loc2_.image = par6_1_embed;
         _loc2_.imageSet = par6;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "GasTankDestroy";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 25;
         _loc2_.lifelow = 129;
         _loc2_.lifehigh = 224;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = -5;
         _loc2_.xspeedhigh = 5;
         _loc2_.yspeedlow = -5;
         _loc2_.yspeedhigh = 5;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 5;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0240000002;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "";
         _loc2_.impath = "p-purple***.png";
         _loc2_.image = par7_1_embed;
         _loc2_.imageSet = par7;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "BoxDestroy";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 5;
         _loc2_.lifelow = 129;
         _loc2_.lifehigh = 224;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = -5;
         _loc2_.xspeedhigh = 5;
         _loc2_.yspeedlow = -5;
         _loc2_.yspeedhigh = 5;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 5;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0240000002;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "";
         _loc2_.impath = "p-purple***.png";
         _loc2_.image = par8_1_embed;
         _loc2_.imageSet = par8;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "BulletHitPlayer";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 5;
         _loc2_.lifelow = 129;
         _loc2_.lifehigh = 224;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = -5;
         _loc2_.xspeedhigh = 5;
         _loc2_.yspeedlow = -5;
         _loc2_.yspeedhigh = 5;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 5;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0240000002;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "";
         _loc2_.impath = "p-purple***.png";
         _loc2_.image = par9_1_embed;
         _loc2_.imageSet = par9;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "RocketTrail";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 27;
         _loc2_.lifehigh = 26;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "trail***.png";
         _loc2_.image = par10_1_embed;
         _loc2_.imageSet = par10;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "RocketExplosion";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 100;
         _loc2_.lifehigh = 100;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AfterAbovePlayer";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "smoke-d***.png";
         _loc2_.image = par11_1_embed;
         _loc2_.imageSet = par11;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "ShootBig";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 5;
         _loc2_.lifehigh = 5;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 1;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "gun-flash-2.png";
         _loc2_.image = par12_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "BulletCasing";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 131;
         _loc2_.lifehigh = 133;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 3;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0260000005;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "shellcase***.png";
         _loc2_.image = par13_1_embed;
         _loc2_.imageSet = par13;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Shrapnel";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 186;
         _loc2_.lifehigh = 188;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "Background";
         _loc2_.animspeed = 7;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0209999997;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "shrapnel***.png";
         _loc2_.image = par14_1_embed;
         _loc2_.imageSet = par14;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Shrapnel2";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 186;
         _loc2_.lifehigh = 188;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "Background";
         _loc2_.animspeed = 7;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 3;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0209999997;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "shrapnel-2***.png";
         _loc2_.image = par15_1_embed;
         _loc2_.imageSet = par15;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Shrapnel3";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 186;
         _loc2_.lifehigh = 188;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "Background";
         _loc2_.animspeed = 7;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 3;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0209999997;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "shrapnel-3***.png";
         _loc2_.image = par16_1_embed;
         _loc2_.imageSet = par16;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Teleport";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 60;
         _loc2_.lifehigh = 91;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 0;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 4;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "laserhit.png";
         _loc2_.image = par17_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "GasTankDestroy";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 36;
         _loc2_.lifehigh = 45;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 2;
         _loc2_.endalpha = 0;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 0;
         _loc2_.endScale = 3;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "gastankdestroy.png";
         _loc2_.image = par18_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "MedKit";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 48;
         _loc2_.lifehigh = 52;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 0;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "medkit.png";
         _loc2_.image = par19_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Revenge";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 36;
         _loc2_.lifehigh = 45;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 2;
         _loc2_.endalpha = 0;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 0;
         _loc2_.endScale = 10;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "gastankdestroy.png";
         _loc2_.image = par20_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "TeleportSmall";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 60;
         _loc2_.lifehigh = 91;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 0;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 2;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "laserhit.png";
         _loc2_.image = par21_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "TeleportRing";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 42;
         _loc2_.lifehigh = 44;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 0;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 0;
         _loc2_.endScale = 4;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 1;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "teleport-ring.png";
         _loc2_.image = par22_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Destroy2";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 126;
         _loc2_.lifehigh = 155;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 1;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0450000018;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "smoke-c***.png";
         _loc2_.image = par23_1_embed;
         _loc2_.imageSet = par23;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "DestroySmall";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 126;
         _loc2_.lifehigh = 155;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 1;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0450000018;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "smoke-b***.png";
         _loc2_.image = par24_1_embed;
         _loc2_.imageSet = par24;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Destroy2";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 15;
         _loc2_.lifelow = 129;
         _loc2_.lifehigh = 224;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = -5;
         _loc2_.xspeedhigh = 5;
         _loc2_.yspeedlow = -5;
         _loc2_.yspeedhigh = 5;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 2;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0240000002;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "p-purple***.png";
         _loc2_.image = par25_1_embed;
         _loc2_.imageSet = par25;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "DestroySmall";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 8;
         _loc2_.lifelow = 129;
         _loc2_.lifehigh = 224;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = -5;
         _loc2_.xspeedhigh = 5;
         _loc2_.yspeedlow = -5;
         _loc2_.yspeedhigh = 5;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 2;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0240000002;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "p-purple***.png";
         _loc2_.image = par26_1_embed;
         _loc2_.imageSet = par26;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "fall";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 57;
         _loc2_.lifehigh = 61;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 2;
         _loc2_.endScale = 0;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "shield-low.png";
         _loc2_.image = par27_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "fall";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 100;
         _loc2_.lifehigh = 100;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 0;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 4;
         _loc2_.dRotationHigh = 4;
         _loc2_.startScale = 1;
         _loc2_.endScale = 0.5;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "shield-low.png";
         _loc2_.image = par28_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "PulseShoot";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 5;
         _loc2_.lifehigh = 5;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 1;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "pulse-flash.png";
         _loc2_.image = par29_embed;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Spark";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 129;
         _loc2_.lifehigh = 224;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = -5;
         _loc2_.xspeedhigh = 5;
         _loc2_.yspeedlow = -5;
         _loc2_.yspeedhigh = 5;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 2;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0240000002;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "p-purple***.png";
         _loc2_.image = par30_1_embed;
         _loc2_.imageSet = par30;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "FastLaserHit";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 47;
         _loc2_.lifehigh = 48;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0;
         _loc2_.Test = 1;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "ringanimb***.png";
         _loc2_.image = par31_1_embed;
         _loc2_.imageSet = par31;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "BigExplosion";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 129;
         _loc2_.lifehigh = 123;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 2;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 1;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 1;
         _loc2_.Friction = 0.0240000002;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "";
         _loc2_.impath = "rancorblast-***.png";
         _loc2_.image = par32_1_embed;
         _loc2_.imageSet = par32;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "DestroyHigh";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 126;
         _loc2_.lifehigh = 155;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 1;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0450000018;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "smoke-d***.png";
         _loc2_.image = par33_1_embed;
         _loc2_.imageSet = par33;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "DestroyHigh";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 15;
         _loc2_.lifelow = 129;
         _loc2_.lifehigh = 224;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = -5;
         _loc2_.xspeedhigh = 5;
         _loc2_.yspeedlow = -5;
         _loc2_.yspeedhigh = 5;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 2;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0240000002;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "p-purple***.png";
         _loc2_.image = par34_1_embed;
         _loc2_.imageSet = par34;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Destroy2High";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 0;
         _loc2_.lifelow = 126;
         _loc2_.lifehigh = 155;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = 0;
         _loc2_.xspeedhigh = 0;
         _loc2_.yspeedlow = 0;
         _loc2_.yspeedhigh = 0;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 1;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 1;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 0;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0450000018;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = false;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "smoke-c***.png";
         _loc2_.image = par35_1_embed;
         _loc2_.imageSet = par35;
         _loc1_.push(_loc2_);
         _loc2_ = new ParticleEmitter();
         _loc2_.Name = "Destroy2High";
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.Frequency = 15;
         _loc2_.lifelow = 129;
         _loc2_.lifehigh = 224;
         _loc2_.gravitylow = 0;
         _loc2_.gravityhigh = 0;
         _loc2_.xspeedlow = -5;
         _loc2_.xspeedhigh = 5;
         _loc2_.yspeedlow = -5;
         _loc2_.yspeedhigh = 5;
         _loc2_.startalpha = 1;
         _loc2_.endalpha = 1;
         _loc2_.rotatespeedtodirection = 0;
         _loc2_.startrotationlow = 0;
         _loc2_.startrotationhigh = 0;
         _loc2_.dRotationLow = 0;
         _loc2_.dRotationHigh = 0;
         _loc2_.startScale = 1;
         _loc2_.endScale = 1;
         _loc2_.additive = 0;
         _loc2_.layeroverride = "AbovePlayer";
         _loc2_.animspeed = 4;
         _loc2_.animspeedrange = 2;
         _loc2_.animframecap = 0;
         _loc2_.killatanimend = 0;
         _loc2_.Friction = 0.0240000002;
         _loc2_.Test = 0;
         _loc2_.StayAfterDeath = true;
         _loc2_.Identifier = "Fall";
         _loc2_.impath = "p-purple***.png";
         _loc2_.image = par36_1_embed;
         _loc2_.imageSet = par36;
         _loc1_.push(_loc2_);
         return _loc1_;
      }
      
      public static function getParticles() : Array
      {
         if(!emitters)
         {
            emitters = constructParticles();
         }
         return emitters;
      }
   }
}

