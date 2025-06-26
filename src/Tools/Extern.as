package Tools
{
   import flash.external.*;

   public class Extern
   {
      public static var messages:Array = new Array();
      public static var _setup:Boolean = false;

      public function Extern()
      {
         super();
      }

      public static function getMessage(requestKey:String):String
      {
         setup();
         var i:int = 0;
         while(i < messages.length)
         {
            var splitMsg:Array = messages[i].split(",", 2);
            if(splitMsg[0] == requestKey)
            {
               messages = messages.splice(i, 1);
               return splitMsg[1];
            }
            i++;
         }
         return "";
      }

      public static function receive(incomingMessage:String):void
      {
         messages.push(incomingMessage);
      }

      public static function callJavascript(functionName:String, argument:String = ""):String
      {
         try
         {
            try
            {
               var result:Object = ExternalInterface.call(functionName, argument);
               if(result is String)
               {
                  return String(result);
               }
               return "";
            }
            catch (innerError:Error)
            {
               return "";
            }
         }
         catch (securityError:SecurityError)
         {
            return "";
         }

         return "";
      }

      public static function setup():void
      {
         if(_setup)
         {
            return;
         }
         _setup = true;
         ExternalInterface.addCallback("rsaGetText", receive);
      }

      public static function sendMessage(jsFunctionName:String, jsArgument:String = ""):String
      {
         setup();
         return callJavascript(jsFunctionName, jsArgument);
      }
   }
}
