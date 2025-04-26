package GameObjects
{
   import Tools.Input;
   
   public class GameObjectFilterDraggable extends GameObjectFilter
   {
      public var handleX:Number = 0;
      
      public var handleY:Number = 0;
      
      public var beingDragged:Boolean = false;
      
      public var startFunc:Function;
      
      public var finishFunc:Function;
      
      public function GameObjectFilterDraggable()
      {
         super();
      }
      
      override public function update(param1:GameObject) : void
      {
         if(!beingDragged)
         {
            if(param1.gs.mHit())
            {
               if(Input.i.mouseX() > param1.basex - param1.baseWidth / 2)
               {
                  if(Input.i.mouseX() < param1.basex + param1.baseWidth / 2)
                  {
                     if(Input.i.mouseY() > param1.basey - param1.baseHeight / 2)
                     {
                        if(Input.i.mouseY() < param1.basey + param1.baseHeight / 2)
                        {
                           handleX = param1.basex - Input.i.mouseX();
                           handleY = param1.basey - Input.i.mouseY();
                           beingDragged = true;
                           if(Boolean(startFunc))
                           {
                              startFunc();
                           }
                        }
                     }
                  }
               }
            }
         }
         if(beingDragged)
         {
            if(!Input.i.mouseDown())
            {
               beingDragged = false;
               if(finishFunc != null)
               {
                  finishFunc();
               }
            }
         }
         if(beingDragged)
         {
            param1.basex = Input.i.mouseX() + handleX;
            param1.basey = Input.i.mouseY() + handleY;
         }
      }
   }
}

