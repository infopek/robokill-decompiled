package Weapons
{
   import GlobalSetup.Embeds;
   
   public class ItemShield extends ItemBase
   {
      public function ItemShield()
      {
         super();
      }
      
      override public function attributeCost() : int
      {
         return 100;
      }
      
      override public function modifyAttribute(param1:String) : String
      {
         return param1 + "%";
      }
      
      override public function description2() : String
      {
         return "OF YOUR ROBOT ONLY. ";
      }
      
      override public function attributeLow() : int
      {
         return 4;
      }
      
      override public function icon() : Class
      {
         return Embeds.itemshield_png;
      }
      
      override public function name() : String
      {
         return "RIOT SHIELD";
      }
      
      override public function description() : String
      {
         return "EXTRA PROTECTION FOR THE FRONT";
      }
      
      override public function minimumEpisode() : int
      {
         return 1;
      }
      
      override public function attributeHigh() : int
      {
         return 24;
      }
      
      override public function units() : String
      {
         return "EXTRA SHIELD: ";
      }
   }
}

