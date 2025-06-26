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

      public static function openURL(url:String):void
      {
         navigateToURL(new URLRequest(url));
      }

      public static function postURL(url:String, keyValuePairs:Array):void
      {
         var request:URLRequest = new URLRequest(url);
         request.method = URLRequestMethod.POST;

         var variables:URLVariables = new URLVariables();

         for each (var pair:Array in keyValuePairs)
         {
            variables[pair[0]] = pair[1];
         }

         request.data = variables;

         trace(request.method);
         navigateToURL(request);
      }
   }
}
