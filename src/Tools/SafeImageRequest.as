package Tools
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;

   public class SafeImageRequest
   {
      public var finished:Boolean = false;

      public var onComplete:Function = null;

      public var loader:Loader;

      public function SafeImageRequest(url:String, onCompleteCallback:Function = null)
      {
         super();
         loader = new Loader();
         onComplete = onCompleteCallback;

         try
         {
            loader.load(new URLRequest(url));
            loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, handleSecurityError);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, handleIOError);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handleComplete);
         }
         catch (err:Error)
         {
            trace("SafeImageRequest: Load failed due to error:", err.message);
         }
      }

      public function handleSecurityError(event:SecurityErrorEvent):void
      {
         trace("SafeImageRequest: Security error while loading image.");
      }

      public function handleIOError(event:IOErrorEvent):void
      {
         trace("SafeImageRequest: IO error while loading image.");
      }

      public function handleComplete(event:Event):void
      {
         finished = true;
         if (onComplete != null)
         {
            onComplete();
         }
      }
   }
}
