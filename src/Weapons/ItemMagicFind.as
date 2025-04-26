package Weapons
{
   import GlobalSetup.Embeds;
   
   public class ItemMagicFind extends ItemBase
   {
      public function ItemMagicFind()
      {
         super();
      }
      
      override public function icon() : Class
      {
         return Embeds.itemmagicfind_png;
      }
      
      override public function modifyAttribute(param1:String) : String
      {
         return param1 + "%";
      }
      
      override public function description2() : String
      {
         return "RARE WEAPONS.";
      }
      
      override public function attributeLow() : int
      {
         return 4;
      }
      
      override public function attributeCost() : int
      {
         return 200;
      }
      
      override public function name() : String
      {
         return "RARE WEAPON SENSOR";
      }
      
      override public function description() : String
      {
         return "INCREASES YOUR CHANCE OF FINDING";
      }
      
      override public function minimumEpisode() : int
      {
         return 4;
      }
      
      override public function attributeHigh() : int
      {
         return 16;
      }
      
      override public function units() : String
      {
         return "BONUS: ";
      }
   }
}

