package Layouts
{
   import GameObjects.GameObject;
   
   public class LayoutTools
   {
      public function LayoutTools()
      {
         super();
      }
      
      public static function fillWithText(param1:GameObject, param2:int, param3:int, param4:int, param5:int = 0, param6:int = 0, param7:int = 0, param8:int = 0) : Array
      {
         var _loc13_:Array = null;
         var _loc14_:int = 0;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc9_:Number = param1.baseWidth - param5 - param7;
         var _loc10_:Number = param1.baseHeight - param6 - param8;
         var _loc11_:Array = new Array(param3);
         var _loc12_:int = 0;
         while(_loc12_ < param3)
         {
            _loc13_ = new Array(param2);
            _loc14_ = 0;
            while(_loc14_ < param2)
            {
               _loc13_[_loc14_] = new GameObject(param1.gs,null,param1.zOrderString,0,0);
               _loc13_[_loc14_].updateDespitePaused = param1.updateDespitePaused;
               _loc13_[_loc14_].setText("SDF",param4);
               _loc15_ = param5 + _loc9_ / param2 * _loc14_;
               _loc16_ = param6 + _loc13_[_loc14_].baseHeight / 2 + (_loc10_ - _loc13_[_loc14_].baseHeight) / param3 * _loc12_;
               _loc13_[_loc14_].basex = int(_loc15_ - param1.baseWidth / 2);
               _loc13_[_loc14_].basey = int(_loc16_ - param1.baseHeight / 2);
               _loc13_[_loc14_].baseHandleX = 0;
               _loc13_[_loc14_].baseHandleY = 0;
               param1.addChild(_loc13_[_loc14_]);
               _loc14_++;
            }
            _loc11_[_loc12_] = _loc13_;
            _loc12_++;
         }
         return _loc11_;
      }
   }
}

