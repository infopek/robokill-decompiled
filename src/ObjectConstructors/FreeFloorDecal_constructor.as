package ObjectConstructors
{
   import GameObjects.*;
   import GameScenes.*;
   import GlobalSetup.*;
   import Objects.*;
   import Particles.*;
   import flash.display.*;
   
   public class FreeFloorDecal_constructor
   {
      public static var LayerName:String = "";
      
      public static var baseim_embed:Class = Embeds.decal_free_01_png;
      
      public static var baseim:BitmapData = new Embeds.decal_free_01_png().bitmapData;
      
      public static var images_1_embed:Class = Embeds.decal_free_01_png;
      
      public static var images_1:BitmapData = new Embeds.decal_free_01_png().bitmapData;
      
      public static var images_2_embed:Class = Embeds.decal_free_02_png;
      
      public static var images_2:BitmapData = new Embeds.decal_free_02_png().bitmapData;
      
      public static var images_3_embed:Class = Embeds.decal_free_03_png;
      
      public static var images_3:BitmapData = new Embeds.decal_free_03_png().bitmapData;
      
      public static var images_4_embed:Class = Embeds.decal_free_04_png;
      
      public static var images_4:BitmapData = new Embeds.decal_free_04_png().bitmapData;
      
      public static var images_5_embed:Class = Embeds.decal_free_05_png;
      
      public static var images_5:BitmapData = new Embeds.decal_free_05_png().bitmapData;
      
      public static var images_6_embed:Class = Embeds.decal_free_06_png;
      
      public static var images_6:BitmapData = new Embeds.decal_free_06_png().bitmapData;
      
      public static var images_7_embed:Class = Embeds.decal_free_07_png;
      
      public static var images_7:BitmapData = new Embeds.decal_free_07_png().bitmapData;
      
      public static var images_8_embed:Class = Embeds.decal_free_08_png;
      
      public static var images_8:BitmapData = new Embeds.decal_free_08_png().bitmapData;
      
      public static var images_9_embed:Class = Embeds.decal_free_09_png;
      
      public static var images_9:BitmapData = new Embeds.decal_free_09_png().bitmapData;
      
      public static var images_10_embed:Class = Embeds.decal_free_10_png;
      
      public static var images_10:BitmapData = new Embeds.decal_free_10_png().bitmapData;
      
      public static var images_11_embed:Class = Embeds.decal_free_11_png;
      
      public static var images_11:BitmapData = new Embeds.decal_free_11_png().bitmapData;
      
      public static var images_12_embed:Class = Embeds.decal_free_12_png;
      
      public static var images_12:BitmapData = new Embeds.decal_free_12_png().bitmapData;
      
      public static var images_13_embed:Class = Embeds.decal_free_13_png;
      
      public static var images_13:BitmapData = new Embeds.decal_free_13_png().bitmapData;
      
      public static var images_14_embed:Class = Embeds.decal_free_14_png;
      
      public static var images_14:BitmapData = new Embeds.decal_free_14_png().bitmapData;
      
      public static var images_15_embed:Class = Embeds.decal_free_15_png;
      
      public static var images_15:BitmapData = new Embeds.decal_free_15_png().bitmapData;
      
      public static var images_16_embed:Class = Embeds.decal_free_16_png;
      
      public static var images_16:BitmapData = new Embeds.decal_free_16_png().bitmapData;
      
      public static var images_17_embed:Class = Embeds.decal_free_17_png;
      
      public static var images_17:BitmapData = new Embeds.decal_free_17_png().bitmapData;
      
      public static var images_18_embed:Class = Embeds.decal_free_18_png;
      
      public static var images_18:BitmapData = new Embeds.decal_free_18_png().bitmapData;
      
      public static var images_19_embed:Class = Embeds.decal_free_19_png;
      
      public static var images_19:BitmapData = new Embeds.decal_free_19_png().bitmapData;
      
      public static var images_20_embed:Class = Embeds.decal_free_20_png;
      
      public static var images_20:BitmapData = new Embeds.decal_free_20_png().bitmapData;
      
      public static var images_21_embed:Class = Embeds.decal_free_21_png;
      
      public static var images_21:BitmapData = new Embeds.decal_free_21_png().bitmapData;
      
      public static var images_22_embed:Class = Embeds.decal_free_22_png;
      
      public static var images_22:BitmapData = new Embeds.decal_free_22_png().bitmapData;
      
      public static var images_23_embed:Class = Embeds.decal_free_23_png;
      
      public static var images_23:BitmapData = new Embeds.decal_free_23_png().bitmapData;
      
      public static var images_24_embed:Class = Embeds.decal_free_24_png;
      
      public static var images_24:BitmapData = new Embeds.decal_free_24_png().bitmapData;
      
      public static var images_25_embed:Class = Embeds.decal_free_25_png;
      
      public static var images_25:BitmapData = new Embeds.decal_free_25_png().bitmapData;
      
      public static var images_26_embed:Class = Embeds.decal_free_26_png;
      
      public static var images_26:BitmapData = new Embeds.decal_free_26_png().bitmapData;
      
      public static var images_27_embed:Class = Embeds.decal_free_27_png;
      
      public static var images_27:BitmapData = new Embeds.decal_free_27_png().bitmapData;
      
      public static var images_28_embed:Class = Embeds.decal_free_28_png;
      
      public static var images_28:BitmapData = new Embeds.decal_free_28_png().bitmapData;
      
      public static var images_29_embed:Class = Embeds.decal_free_29_png;
      
      public static var images_29:BitmapData = new Embeds.decal_free_29_png().bitmapData;
      
      public static var images_30_embed:Class = Embeds.decal_free_30_png;
      
      public static var images_30:BitmapData = new Embeds.decal_free_30_png().bitmapData;
      
      public static var images_31_embed:Class = Embeds.decal_free_31_png;
      
      public static var images_31:BitmapData = new Embeds.decal_free_31_png().bitmapData;
      
      public static var images_32_embed:Class = Embeds.decal_free_32_png;
      
      public static var images_32:BitmapData = new Embeds.decal_free_32_png().bitmapData;
      
      public static var images_33_embed:Class = Embeds.decal_free_33_png;
      
      public static var images_33:BitmapData = new Embeds.decal_free_33_png().bitmapData;
      
      public static var images_34_embed:Class = Embeds.decal_free_34_png;
      
      public static var images_34:BitmapData = new Embeds.decal_free_34_png().bitmapData;
      
      public static var images_35_embed:Class = Embeds.decal_free_35_png;
      
      public static var images_35:BitmapData = new Embeds.decal_free_35_png().bitmapData;
      
      public static var images_36_embed:Class = Embeds.decal_free_36_png;
      
      public static var images_36:BitmapData = new Embeds.decal_free_36_png().bitmapData;
      
      public static var images_37_embed:Class = Embeds.decal_free_37_png;
      
      public static var images_37:BitmapData = new Embeds.decal_free_37_png().bitmapData;
      
      public static var images_38_embed:Class = Embeds.decal_free_38_png;
      
      public static var images_38:BitmapData = new Embeds.decal_free_38_png().bitmapData;
      
      public static var images_39_embed:Class = Embeds.decal_free_39_png;
      
      public static var images_39:BitmapData = new Embeds.decal_free_39_png().bitmapData;
      
      public static var images_40_embed:Class = Embeds.decal_free_40_png;
      
      public static var images_40:BitmapData = new Embeds.decal_free_40_png().bitmapData;
      
      public static var images_41_embed:Class = Embeds.decal_free_41_png;
      
      public static var images_41:BitmapData = new Embeds.decal_free_41_png().bitmapData;
      
      public static var images_42_embed:Class = Embeds.decal_free_42_png;
      
      public static var images_42:BitmapData = new Embeds.decal_free_42_png().bitmapData;
      
      public static var images_43_embed:Class = Embeds.decal_free_43_png;
      
      public static var images_43:BitmapData = new Embeds.decal_free_43_png().bitmapData;
      
      public static var images_44_embed:Class = Embeds.decal_free_44_png;
      
      public static var images_44:BitmapData = new Embeds.decal_free_44_png().bitmapData;
      
      public static var images_45_embed:Class = Embeds.decal_free_45_png;
      
      public static var images_45:BitmapData = new Embeds.decal_free_45_png().bitmapData;
      
      public static var images_46_embed:Class = Embeds.decal_free_46_png;
      
      public static var images_46:BitmapData = new Embeds.decal_free_46_png().bitmapData;
      
      public static var images_47_embed:Class = Embeds.decal_free_47_png;
      
      public static var images_47:BitmapData = new Embeds.decal_free_47_png().bitmapData;
      
      public static var images_48_embed:Class = Embeds.decal_free_48_png;
      
      public static var images_48:BitmapData = new Embeds.decal_free_48_png().bitmapData;
      
      public static var images_49_embed:Class = Embeds.decal_free_49_png;
      
      public static var images_49:BitmapData = new Embeds.decal_free_49_png().bitmapData;
      
      public static var images_50_embed:Class = Embeds.decal_free_50_png;
      
      public static var images_50:BitmapData = new Embeds.decal_free_50_png().bitmapData;
      
      public static var images_51_embed:Class = Embeds.decal_free_51_png;
      
      public static var images_51:BitmapData = new Embeds.decal_free_51_png().bitmapData;
      
      public static var images_52_embed:Class = Embeds.decal_free_52_png;
      
      public static var images_52:BitmapData = new Embeds.decal_free_52_png().bitmapData;
      
      public static var images_53_embed:Class = Embeds.decal_free_53_png;
      
      public static var images_53:BitmapData = new Embeds.decal_free_53_png().bitmapData;
      
      public static var images_54_embed:Class = Embeds.decal_free_54_png;
      
      public static var images_54:BitmapData = new Embeds.decal_free_54_png().bitmapData;
      
      public static var images_55_embed:Class = Embeds.decal_free_55_png;
      
      public static var images_55:BitmapData = new Embeds.decal_free_55_png().bitmapData;
      
      public static var images_56_embed:Class = Embeds.decal_free_56_png;
      
      public static var images_56:BitmapData = new Embeds.decal_free_56_png().bitmapData;
      
      public static var images_57_embed:Class = Embeds.decal_free_57_png;
      
      public static var images_57:BitmapData = new Embeds.decal_free_57_png().bitmapData;
      
      public static var images_58_embed:Class = Embeds.decal_free_58_png;
      
      public static var images_58:BitmapData = new Embeds.decal_free_58_png().bitmapData;
      
      public static var images_59_embed:Class = Embeds.decal_free_59_png;
      
      public static var images_59:BitmapData = new Embeds.decal_free_59_png().bitmapData;
      
      public static var images_60_embed:Class = Embeds.decal_free_60_png;
      
      public static var images_60:BitmapData = new Embeds.decal_free_60_png().bitmapData;
      
      public static var images_61_embed:Class = Embeds.decal_free_61_png;
      
      public static var images_61:BitmapData = new Embeds.decal_free_61_png().bitmapData;
      
      public static var images_62_embed:Class = Embeds.decal_free_62_png;
      
      public static var images_62:BitmapData = new Embeds.decal_free_62_png().bitmapData;
      
      public static var images_63_embed:Class = Embeds.decal_free_63_png;
      
      public static var images_63:BitmapData = new Embeds.decal_free_63_png().bitmapData;
      
      public static var images_64_embed:Class = Embeds.decal_free_64_png;
      
      public static var images_64:BitmapData = new Embeds.decal_free_64_png().bitmapData;
      
      public static var images_65_embed:Class = Embeds.decal_free_65_png;
      
      public static var images_65:BitmapData = new Embeds.decal_free_65_png().bitmapData;
      
      public static var images_66_embed:Class = Embeds.decal_free_67_png;
      
      public static var images_66:BitmapData = new Embeds.decal_free_67_png().bitmapData;
      
      public static var images_67_embed:Class = Embeds.decal_free_68_png;
      
      public static var images_67:BitmapData = new Embeds.decal_free_68_png().bitmapData;
      
      public static var images_68_embed:Class = Embeds.decal_free_69_png;
      
      public static var images_68:BitmapData = new Embeds.decal_free_69_png().bitmapData;
      
      public static var images_69_embed:Class = Embeds.decal_free_70_png;
      
      public static var images_69:BitmapData = new Embeds.decal_free_70_png().bitmapData;
      
      public static var images_70_embed:Class = Embeds.decal_free_71_png;
      
      public static var images_70:BitmapData = new Embeds.decal_free_71_png().bitmapData;
      
      public static var images_71_embed:Class = Embeds.decal_free_72_png;
      
      public static var images_71:BitmapData = new Embeds.decal_free_72_png().bitmapData;
      
      public static var images_72_embed:Class = Embeds.decal_free_73_png;
      
      public static var images_72:BitmapData = new Embeds.decal_free_73_png().bitmapData;
      
      public static var images_73_embed:Class = Embeds.decal_free_74_png;
      
      public static var images_73:BitmapData = new Embeds.decal_free_74_png().bitmapData;
      
      public static var images_74_embed:Class = Embeds.decal_free_75_png;
      
      public static var images_74:BitmapData = new Embeds.decal_free_75_png().bitmapData;
      
      public static var images_75_embed:Class = Embeds.decal_free_76_png;
      
      public static var images_75:BitmapData = new Embeds.decal_free_76_png().bitmapData;
      
      public static var images_76_embed:Class = Embeds.decal_free_77_png;
      
      public static var images_76:BitmapData = new Embeds.decal_free_77_png().bitmapData;
      
      public static var images_77_embed:Class = Embeds.decal_free_78_png;
      
      public static var images_77:BitmapData = new Embeds.decal_free_78_png().bitmapData;
      
      public static var images_78_embed:Class = Embeds.decal_free_79_png;
      
      public static var images_78:BitmapData = new Embeds.decal_free_79_png().bitmapData;
      
      public static var images_79_embed:Class = Embeds.decal_free_80_png;
      
      public static var images_79:BitmapData = new Embeds.decal_free_80_png().bitmapData;
      
      public static var images_80_embed:Class = Embeds.decal_free_81_png;
      
      public static var images_80:BitmapData = new Embeds.decal_free_81_png().bitmapData;
      
      public static var images_81_embed:Class = Embeds.decal_free_82_png;
      
      public static var images_81:BitmapData = new Embeds.decal_free_82_png().bitmapData;
      
      public static var images_82_embed:Class = Embeds.decal_free_83_png;
      
      public static var images_82:BitmapData = new Embeds.decal_free_83_png().bitmapData;
      
      public static var images_83_embed:Class = Embeds.decal_free_84_png;
      
      public static var images_83:BitmapData = new Embeds.decal_free_84_png().bitmapData;
      
      public static var images_84_embed:Class = Embeds.decal_free_85_png;
      
      public static var images_84:BitmapData = new Embeds.decal_free_85_png().bitmapData;
      
      public static var images_85_embed:Class = Embeds.decal_free_86_png;
      
      public static var images_85:BitmapData = new Embeds.decal_free_86_png().bitmapData;
      
      public static var images_86_embed:Class = Embeds.decal_free_87_png;
      
      public static var images_86:BitmapData = new Embeds.decal_free_87_png().bitmapData;
      
      public static var images:Array = [images_1,images_2,images_3,images_4,images_5,images_6,images_7,images_8,images_9,images_10,images_11,images_12,images_13,images_14,images_15,images_16,images_17,images_18,images_19,images_20,images_21,images_22,images_23,images_24,images_25,images_26,images_27,images_28,images_29,images_30,images_31,images_32,images_33,images_34,images_35,images_36,images_37,images_38,images_39,images_40,images_41,images_42,images_43,images_44,images_45,images_46,images_47,images_48,images_49,images_50,images_51,images_52,images_53,images_54,images_55,images_56,images_57,images_58,images_59,images_60,images_61,images_62,images_63,images_64,images_65,images_66,images_67,images_68,images_69,images_70,images_71,images_72,images_73,images_74,images_75,images_76,images_77,images_78,images_79,images_80,images_81,images_82,images_83,images_84,images_85,images_86];
      
      public function FreeFloorDecal_constructor()
      {
         super();
      }
      
      public static function setup(param1:GameScene, param2:GameObject) : void
      {
         var _loc3_:GameObjectFilter = null;
         var _loc4_:ParticleEmitter = null;
         var _loc5_:ParticleFilter = null;
         var _loc6_:GameObject = null;
         var _loc7_:GameObjectFilter = null;
         param2.baseHandleX = 0.5;
         param2.baseHandleY = 0.5;
         param2.addConditionalParticleArray(globalParticles.getParticles());
         param2.animSpeed = 0;
         FreeFloorDecal(param2).images = images;
         param2.imageSet = images;
      }
   }
}

