package Tools
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   import flash.system.Security;

   public class SplitTest
   {
      public static var fivelives:SplitTest;
      public static var splitTestName:String;

      public var enabled:Boolean = false;
      public var thisname:String;
      public var req:URLStream;

      public function SplitTest(param1:String)
      {
         thisname = param1;

         // --- NETWORK DISABLED ---
         // To re-enable, remove this return and uncomment the block below.
         return;

         /*
         if(Security.sandboxType != Security.REMOTE)
         {
            return;
         }
         Security.allowDomain("www.rocksolidarcade.com");
         Security.allowInsecureDomain("www.rocksolidarcade.com");

         var link:String = "http://www.rocksolidarcade.com/test/";
         req = new URLStream();
         try
         {
            req.load(new URLRequest(link));
            req.addEventListener(Event.COMPLETE, finishload);
            req.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
            req.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
         }
         catch(error:Error)
         {
         }
         */
      }

      public static function init() : void
      {
      }

      private static function ioErrorHandler(param1:IOErrorEvent) : void
      {
      }

      private static function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
      }

      public function finishload(param1:Event) : void
      {
         var _loc2_:String = "";
         while(req.bytesAvailable > 0)
         {
            _loc2_ += req.readUTFBytes(1);
         }
         _loc2_ = _loc2_.toLowerCase();
         if(_loc2_.indexOf(thisname) != -1)
         {
            splitTestName = thisname;
            enabled = true;
         }
         else
         {
            splitTestName = "!" + thisname;
         }
      }
   }
}
