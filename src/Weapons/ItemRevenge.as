package Weapons
{
   import GlobalSetup.Embeds;
   
   public class ItemRevenge extends ItemBase
   {
      public function ItemRevenge()
      {
         super();
      }
      
      override public function icon() : Class
      {
         return Embeds.itemrevenge_png;
      }
      
      override public function description2() : String
      {
         return "DESTROYING NEARBY ENEMIES.";
      }
      
      override public function attributeLow() : int
      {
         return 15;
      }
      
      override public function attributeCost() : int
      {
         return 4;
      }
      
      override public function name() : String
      {
         return "REVENGE DETONATOR";
      }
      
      override public function description() : String
      {
         return "DETONATES IF YOUR HEALTH IS LOW, ";
      }
      
      override public function minimumEpisode() : int
      {
         return 2;
      }
      
      override public function attributeHigh() : int
      {
         return 160;
      }
      
      override public function units() : String
      {
         return "DAMAGE:";
      }
   }
}

