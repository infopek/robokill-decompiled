package Tools
{
   import flash.display.DisplayObject;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;

   public class Input
   {
      public static var i:Input;
      public static var verboseInput:Boolean = false;

      public var last:FocusEvent;
      public var mouseButtonHit:int = 0;
      public var keyStatus:Array = new Array();
      public var mousex:int;
      public var mouseStatus:int = 0;
      public var mousey:int;
      public var keysHit:Array = new Array();

      public function Input(display:DisplayObject)
      {
         super();
         display.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler);
         display.addEventListener(KeyboardEvent.KEY_UP, keyUpHandler);
         display.addEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
         display.addEventListener(MouseEvent.MOUSE_UP, mouseUpHandler);
         display.addEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
         display.addEventListener(FocusEvent.FOCUS_OUT, focusOutHandler);
         display.addEventListener(FocusEvent.KEY_FOCUS_CHANGE, focusOutHandler);
         display.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE, focusOutHandler);
         i = this;
      }

      public function mouseUpHandler(event:MouseEvent):void
      {
         mouseStatus = 0;
      }

      public function keyUpHandler(event:KeyboardEvent):void
      {
         keyStatus[event.keyCode] = false;
      }

      public function mouseX():int
      {
         return mousex;
      }

      public function mouseMoveHandler(event:MouseEvent):void
      {
         mousex = event.stageX;
         mousey = event.stageY;
      }

      public function focusOutHandler(event:FocusEvent):void
      {
         if (last)
         {
            if (event.type == FocusEvent.FOCUS_OUT)
            {
               if (last.type != FocusEvent.MOUSE_FOCUS_CHANGE)
               {
                  for (var i:int = 0; i < keyStatus.length; i++)
                  {
                     keyStatus[i] = false;
                  }
                  mouseStatus = 0;
               }
            }
         }
         last = event;
      }

      public function keyDown(keyCode:int):int
      {
         return keyStatus[keyCode];
      }

      public function mouseDownHandler(event:MouseEvent):void
      {
         mouseStatus = 1;
         mouseButtonHit = 1;
      }

      public function mouseDown():int
      {
         return mouseStatus;
      }

      public function keyDownHandler(event:KeyboardEvent):void
      {
         if (keyStatus[event.keyCode] !== true)
         {
            keysHit[event.keyCode] = true;
         }

         keyStatus[event.keyCode] = true;

         if (verboseInput)
         {
            trace(event.keyCode);
         }
      }

      public function keyHit(keyCode:int, clear:Boolean = true):int
      {
         var wasHit:int = int(keysHit[keyCode]);
         if (clear)
         {
            keysHit[keyCode] = false;
         }
         return wasHit;
      }

      public function mouseHit():int
      {
         var hit:int = mouseButtonHit;
         mouseButtonHit = 0;
         return hit;
      }

      public function mouseY():int
      {
         return mousey;
      }
   }
}
