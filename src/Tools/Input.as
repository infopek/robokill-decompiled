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
      
      public function Input(param1:DisplayObject)
      {
         super();
         param1.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
         param1.addEventListener(KeyboardEvent.KEY_UP,keyUpHandler);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
         param1.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
         param1.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
         param1.addEventListener(FocusEvent.FOCUS_OUT,focusOutHandler);
         param1.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,focusOutHandler);
         param1.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,focusOutHandler);
         i = this;
      }
      
      public function mouseUpHandler(param1:MouseEvent) : void
      {
         mouseStatus = 0;
      }
      
      public function keyUpHandler(param1:KeyboardEvent) : void
      {
         keyStatus[param1.keyCode] = false;
      }
      
      public function mouseX() : int
      {
         return mousex;
      }
      
      public function mouseMoveHandler(param1:MouseEvent) : void
      {
         mousex = param1.stageX;
         mousey = param1.stageY;
      }
      
      public function focusOutHandler(param1:FocusEvent) : void
      {
         var _loc2_:int = 0;
         if(last)
         {
            if(param1.type == FocusEvent.FOCUS_OUT)
            {
               if(last.type != FocusEvent.MOUSE_FOCUS_CHANGE)
               {
                  _loc2_ = 0;
                  while(_loc2_ < keyStatus.length)
                  {
                     keyStatus[_loc2_] = false;
                     _loc2_++;
                  }
                  mouseStatus = 0;
               }
            }
         }
         last = param1;
      }
      
      public function keyDown(param1:int) : int
      {
         return keyStatus[param1];
      }
      
      public function mouseDownHandler(param1:MouseEvent) : void
      {
         mouseStatus = 1;
         mouseButtonHit = 1;
      }
      
      public function mouseDown() : int
      {
         return mouseStatus;
      }
      
      public function keyDownHandler(param1:KeyboardEvent) : void
      {
         if(keyStatus[param1.keyCode] != true)
         {
            keysHit[param1.keyCode] = true;
         }
         keyStatus[param1.keyCode] = true;
         if(verboseInput)
         {
            trace(param1.keyCode);
         }
      }
      
      public function keyHit(param1:int, param2:Boolean = true) : int
      {
         var _loc3_:int = int(keysHit[param1]);
         if(param2)
         {
            keysHit[param1] = false;
         }
         return _loc3_;
      }
      
      public function mouseHit() : int
      {
         var _loc1_:int = mouseButtonHit;
         mouseButtonHit = 0;
         return _loc1_;
      }
      
      public function mouseY() : int
      {
         return mousey;
      }
   }
}

