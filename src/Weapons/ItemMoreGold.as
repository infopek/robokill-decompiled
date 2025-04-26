package Weapons
{
   import GlobalSetup.Embeds;
   
   public class ItemMoreGold extends ItemBase
   {
      public function ItemMoreGold()
      {
         super();
      }
      
      override public function icon() : Class
      {
         return Embeds.itemmoregold_png;
      }
      
      override public function modifyAttribute(param1:String) : String
      {
         return param1 + "%";
      }
      
      override public function description2() : String
      {
         return "DROPS.";
      }
      
      override public function attributeLow() : int
      {
         return 4;
      }
      
      override public function attributeCost() : int
      {
         return 50;
      }
      
      override public function name() : String
      {
         return "CASH SENSOR";
      }
      
      override public function description() : String
      {
         return "INCREASES THE SIZE OF ENEMY CASH";
      }
      
      override public function minimumEpisode() : int
      {
         return 3;
      }
      
      override public function attributeHigh() : int
      {
         return 32;
      }
      
      override public function units() : String
      {
         return "EXTRA CASH: ";
      }
   }
}

