package Tools
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   
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
            stream.load(ur);
            stream.addEventListener(SecurityErrorEvent.SECURITY_ERROR,securityErrorHandler);
            stream.addEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
            stream.addEventListener(Event.COMPLETE,complete);
         }
         catch(error:Error)
         {
            trace("Unable to load requested URL.");
         }
      }
      
      public function ioErrorHandler(param1:IOErrorEvent) : void
      {
      }
      
      public function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
      }
      
      public function complete(param1:Event) : void
      {
         if(cancelled)
         {
            return;
         }
         finished = true;
         data = "";
         while(stream.bytesAvailable > 0)
         {
            data += stream.readUTFBytes(1);
         }
         if(finishFunc != null)
         {
            finishFunc();
         }
      }
      
      public function cancel() : void
      {
         cancelled = true;
      }
   }
}

