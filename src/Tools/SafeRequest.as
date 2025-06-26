package Tools
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   import flash.utils.ByteArray;

   public class SafeRequest
   {
      public var stream:URLStream;
      public var data:String = "";
      public var cancelled:Boolean = false;
      public var finished:Boolean = false;
      public var finishFunc:Function = null;
      public var req:URLRequest;

      public function SafeRequest(param1:String, param2:Function = null)
      {
         var ur:URLRequest = null;
         var url:String = param1;
         var finish:Function = param2;
         super();
         stream = new URLStream();
         finishFunc = finish;
         try
         {
            ur = new URLRequest(url);
            req = ur;
            stream.load(ur);
            stream.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
            stream.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
            stream.addEventListener(Event.COMPLETE, complete);
         }
         catch(error:Error)
         {
            trace("Unable to load requested URL: " + url);
         }
      }

      private function cleanup():void
      {
         stream.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
         stream.removeEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
         stream.removeEventListener(Event.COMPLETE, complete);
      }

      public function ioErrorHandler(param1:IOErrorEvent) : void
      {
         trace("IO Error occurred while loading URL: " + req.url);
         cleanup();
      }

      public function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
         trace("Security Error occurred: " + param1.text);
         cleanup();
      }

      public function complete(param1:Event) : void
      {
         if (cancelled)
         {
            cleanup();
            return;
         }

         finished = true;
         var bytes:ByteArray = new ByteArray();
         stream.readBytes(bytes);
         data = bytes.toString();

         cleanup();

         if (finishFunc != null)
         {
            finishFunc();
         }
      }

      public function cancel() : void
      {
         cancelled = true;
         cleanup();
      }
   }
}
