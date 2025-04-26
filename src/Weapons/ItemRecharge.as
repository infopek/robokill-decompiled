package Weapons
{
   import GlobalSetup.Embeds;
   
   public class ItemRecharge extends ItemBase
   {
      public function ItemRecharge()
      {
         super();
      }
      
      override public function attributeCost() : int
      {
         return 60;
      }
      
      override public function description2() : String
      {
         return "EACH ROOM. REUSABLE.";
      }
      
      override public function attributeLow() : int
      {
         return 5;
      }
      
      override public function icon() : Class
      {
         return Embeds.itemrecharge_png;
      }
      
      override public function name() : String
      {
         return "SHIELD CHARGER";
      }
      
      override public function description() : String
      {
         return "BOOSTS YOUR SHIELDS AFTER YOU CLEAR";
      }
      
      override public function attributeHigh() : int
      {
         return 48;
      }
      
      override public function units() : String
      {
         return "BOOST:";
      }
   }
}

