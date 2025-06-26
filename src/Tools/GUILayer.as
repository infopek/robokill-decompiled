package Tools
{
   import GameObjects.*;
   import Layouts.*;

   public class GUILayer
   {
      public var creation:Function;
      public var elements:Array;
      public var children:Array = new Array();

      public function GUILayer()
      {
         super();
      }

      public function buttonHit(buttonName:String):Boolean
      {
         for each (var childLayer:GUILayer in children)
         {
            if (childLayer.buttonHit(buttonName))
            {
               return true;
            }
         }

         for each (var button:GameObject in elements)
         {
            if (button.name == buttonName)
            {
               return button.mHit();
            }
         }

         return false;
      }

      public function flattenLayouts(layoutObjects:Array):Array
      {
         layoutObjects = flattenArray(layoutObjects);
         var result:Array = [];

         for each (var obj:Object in layoutObjects)
         {
            if (obj is GameObject)
            {
               result.push(obj);
            }
            else if (obj is Layout)
            {
               for each (var go:GameObject in Layout(obj).getGameObjects())
               {
                  result.push(go);
               }
            }
         }

         return result;
      }

      public function getButton(buttonName:String):GameObject
      {
         for each (var childLayer:GUILayer in children)
         {
            var result:GameObject = childLayer.getButton(buttonName);
            if (result)
            {
               return result;
            }
         }

         for each (var button:GameObject in elements)
         {
            if (button.name == buttonName)
            {
               return button;
            }
         }

         return null;
      }

      public function pop():void
      {
         var poppedLayer:GUILayer = GUILayer(children.pop());
         poppedLayer.destroyElements();

         var previousLayer:GUILayer = GUILayer(children[children.length - 1]);
         if (previousLayer)
         {
            previousLayer.elements = flattenLayouts(previousLayer.creation());
         }
      }

      public function flattenArray(array:Array):Array
      {
         var flattened:Array = [];

         for (var i:int = 0; i < array.length; i++)
         {
            var item:* = array[i];

            if (item is Array)
            {
               var flatInnerArray:Array = flattenArray(item);
               for (var j:int = 0; j < flatInnerArray.length; j++)
               {
                  flattened.push(flatInnerArray[j]);
               }
            }
            else
            {
               flattened.push(item);
            }
         }

         return flattened;
      }

      public function destroyElements():void
      {
         if (!elements)
         {
            return;
         }

         for each (var element:GameObject in elements)
         {
            for each (var filter:GameObjectFilter in element.filters)
            {
               filter.reverse();
               filter.removeWhenDone();
            }
         }

         elements = [];
      }

      public function push(newLayerCallback:Function, replacePrevious:Boolean = false):void
      {
         if (children.length > 0)
         {
            children[children.length - 1].destroyElements();
         }

         if (replacePrevious)
         {
            children.pop();
         }

         var newElements:Array = flattenLayouts(newLayerCallback());
         var newLayer:GUILayer = new GUILayer();
         newLayer.elements = newElements;
         newLayer.creation = newLayerCallback;

         children.push(newLayer);
      }
   }
}
