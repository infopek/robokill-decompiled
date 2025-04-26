package Tools
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   
   public class Net
   {
      public function Net()
      {
         super();
      }
      
      public static function openURL(param1:String) : void
      {
         navigateToURL(new URLRequest(param1));
      }
      
      public static function postURL(param1:String, param2:Array) : void
      {
         var _loc5_:Array = null;
         var _loc3_:URLRequest = new URLRequest(param1);
         _loc3_.method = URLRequestMethod.POST;
         var _loc4_:URLVariables = new URLVariables();
         for each(_loc5_ in param2)
         {
            _loc4_[_loc5_[0]] = _loc5_[1];
         }
         _loc3_.data = _loc4_;
         trace(_loc3_.method);
         navigateToURL(_loc3_);
      }
   }
}

