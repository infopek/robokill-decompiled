package GameObjects
{
   import Audio.GameSound;
   import Audio.GameSoundChannel;
   import GameConfigs.GameConfig;
   import Tools.GraphicsTools;
   import Tools.Interpolation;
   import Tools.SafeImageRequest;
   import flash.display.Bitmap;
   import flash.geom.Point;
   
   public class GameObjectHelper
   {
      public static var radianConst:Number = Math.PI / 180;
      
      public var ambientsMap:Object = new Object();
      
      public var conditionalChildrenAdjust:Object = new Object();
      
      public var lastInputs:Object = new Object();
      
      public var lastOutputs:Object = new Object();
      
      public var conditionalChildren:Object = new Object();
      
      public var backing:GameObject;
      
      public var _lazyLoad:SafeImageRequest;
      
      public var removed:Boolean = false;
      
      public var childrenFadeData:Object = new Object();
      
      public var go:GameObject;
      
      public var blinkFilter:GameObjectFilterBlink;
      
      public var lastAdjustedAlphaTicks:* = 0;
      
      public function GameObjectHelper(param1:GameObject)
      {
         super();
         this.go = param1;
      }
      
      public function angleToPoint(param1:Number, param2:Number) : Number
      {
         return Math.atan2(param2 - go.globalY(),param1 - go.globalX()) * 180 / Math.PI + 90 + GameConfig.referenceAngle;
      }
      
      public function blinkHelpText(param1:String, param2:String = "", param3:int = 7) : void
      {
         var _loc4_:GameObject = new GameObject(go.gs,null,go.zOrderString,go.baseWidth * (0.5 - go.baseHandleX),-go.baseHeight / 2 - 10 + go.baseHeight * (0.5 - go.baseHandleY));
         if(param2 != "")
         {
            _loc4_.fontName = param2;
         }
         _loc4_.setText(param1,param3);
         _loc4_.addFilter(new GameObjectFilterBlink());
         _loc4_.updateDespitePaused = go.updateDespitePaused;
         go.addChild(_loc4_);
      }
      
      public function slideTo(param1:Number, param2:Number, param3:Boolean = true, param4:int = 100, param5:Function = null) : void
      {
         var _loc6_:GameObjectFilterSqrtInterpolateIn = new GameObjectFilterSqrtInterpolateIn();
         _loc6_.dx = param1 - go.basex;
         _loc6_.dy = param2 - go.basey;
         _loc6_.useSquareSquare = true;
         _loc6_.killWhenDone = param3;
         _loc6_.FadeTime = param4;
         _loc6_.killFunction = param5;
         go.addFilter(_loc6_);
      }
      
      public function angleToObject(param1:GameObject) : Number
      {
         return Math.atan2(param1.globalY() - go.globalY(),param1.globalX() - go.globalX()) * 180 / Math.PI + 90 + GameConfig.referenceAngle;
      }
      
      public function vectorToPoint(param1:Number, param2:Number) : Point
      {
         var _loc3_:Number = param1 - go.basex;
         var _loc4_:Number = param2 - go.basey;
         var _loc5_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         _loc3_ /= _loc5_;
         _loc4_ /= _loc5_;
         return new Point(_loc3_,_loc4_);
      }
      
      public function normalize(param1:Number, param2:Number) : Point
      {
         if(param1 == 0 && param2 == 0)
         {
            return new Point(0,0);
         }
         var _loc3_:Number = Math.sqrt(param1 * param1 + param2 * param2);
         param1 /= _loc3_;
         param2 /= _loc3_;
         return new Point(param1,param2);
      }
      
      public function anySlideFilters() : Boolean
      {
         var _loc1_:GameObjectFilter = null;
         for each(_loc1_ in go.filters)
         {
            if(_loc1_ is GameObjectFilterSqrtInterpolateIn)
            {
               if(!GameObjectFilterSqrtInterpolateIn(_loc1_).done())
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function showChildren() : void
      {
         var _loc1_:GameObject = null;
         for each(_loc1_ in go.children)
         {
            _loc1_.show();
         }
      }
      
      public function mapWhenChanged(param1:Array, param2:String, param3:Function, param4:Function) : Array
      {
         var _loc5_:Array = new Array(param1.length);
         var _loc6_:Array = (lastInputs[param2] as Array)[0];
         var _loc7_:Array = (lastOutputs[param2] as Array)[0];
         if(!_loc6_)
         {
            _loc6_ = new Array(param1.length);
            lastInputs[param2] = _loc6_;
            _loc7_ = new Array(param1.length);
            lastOutputs[param2] = _loc7_;
         }
         var _loc8_:int = 0;
         while(_loc8_ < param1.length)
         {
            if(param1[_loc8_] != _loc6_[_loc8_])
            {
               if(_loc7_[_loc8_])
               {
                  param4(_loc7_[_loc8_]);
               }
               if(param1[_loc8_])
               {
                  _loc5_[_loc8_] = param3(param1[_loc8_]);
               }
            }
            else
            {
               _loc5_[_loc8_] = _loc7_[_loc8_];
            }
            _loc6_[_loc8_] = param1[_loc8_];
            _loc7_[_loc8_] = _loc5_[_loc8_];
            _loc8_++;
         }
         return _loc5_;
      }
      
      public function relativeAngleToObject(param1:GameObject) : Number
      {
         var _loc2_:Number = 0;
         if(go.parent)
         {
            _loc2_ += go.parent.baseRotation;
         }
         return go.helper.angleToObject(param1) - _loc2_;
      }
      
      public function fadeChildren(param1:Number, param2:Number = 100) : void
      {
         var _loc3_:GameObject = null;
         var _loc4_:Number = NaN;
         for each(_loc3_ in go.children)
         {
            if(childrenFadeData[_loc3_] == null)
            {
               childrenFadeData[_loc3_] = _loc3_.baseAlpha;
            }
            _loc4_ = Number(childrenFadeData[_loc3_]);
            _loc3_.baseAlpha = Interpolation.tendTowards(_loc3_.baseAlpha,param1 * _loc4_,_loc4_ / param2);
            _loc3_.hidden = _loc3_.baseAlpha == 0;
         }
      }
      
      public function onScreen() : Boolean
      {
         if(go.basex - go.gs.camX < 0)
         {
            return false;
         }
         if(go.basey - go.gs.camX > 800)
         {
            return false;
         }
         if(go.basey - go.gs.camY < 0)
         {
            return false;
         }
         if(go.basey - go.gs.camY > 600)
         {
            return false;
         }
         return true;
      }
      
      public function positionAsChild(param1:GameObject, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = go.tformed(param2,param3);
         param1.basex = _loc4_.x;
         param1.basey = _loc4_.y;
         param1.baseScaleX = go.baseScaleX;
         param1.baseScaleY = go.baseScaleY;
         param1.baseRotation = go.modifiedRotation;
         param1.baseAlpha = go.baseAlpha;
      }
      
      public function offscreen(param1:int = 0) : Boolean
      {
         if(go.basex < -param1)
         {
            return true;
         }
         if(go.basex > 800 + param1)
         {
            return true;
         }
         if(go.basey < -param1)
         {
            return true;
         }
         if(go.basey > 600 + param1)
         {
            return true;
         }
         return false;
      }
      
      public function stripChildren() : void
      {
         var _loc1_:GameObject = null;
         for each(_loc1_ in go.children)
         {
            _loc1_.remove();
         }
      }
      
      public function addBacking() : void
      {
         backing = new GameObject(go.gs,GraphicsTools.createFilledSprite(800,600,4278190080),go.zOrderString,400,300);
         backing.baseAlpha = 0.4;
         backing.helperFilter.fadeIn(15);
         backing.setGlobal(true);
         go.changeZOrder(go.zOrderString);
      }
      
      public function playAmbient(param1:GameSound, param2:Boolean = false) : GameSoundChannel
      {
         if(ambientsMap[param1] is GameSoundChannel)
         {
            if(!param2)
            {
               ambientsMap[param1].stop();
               ambientsMap[param1] = null;
            }
         }
         else if(param2)
         {
            ambientsMap[param1] = param1.play(true);
         }
         return ambientsMap[param1];
      }
      
      public function update() : void
      {
         var _loc1_:GameObjectFilter = null;
         var _loc2_:Number = NaN;
         if(_lazyLoad)
         {
            if(_lazyLoad.finished)
            {
               go.setupButton(Bitmap(_lazyLoad.loader.getChildAt(0)).bitmapData,"",null,true);
               go.baseWidth = go.obj.width;
               go.baseHeight = go.obj.height;
               _lazyLoad = null;
            }
         }
         if(backing)
         {
            for each(_loc1_ in go.filters)
            {
               if(_loc1_ is GameObjectFilterSqrtInterpolateIn)
               {
                  _loc2_ = GameObjectFilterSqrtInterpolateIn(_loc1_).progress();
                  _loc2_ = (_loc2_ - 0.5) * 2;
                  if(_loc2_ < 0)
                  {
                     _loc2_ = 0;
                  }
                  backing.baseAlpha = _loc2_ * 0.4;
               }
            }
         }
      }
      
      public function handleRemove() : void
      {
         var _loc1_:Object = null;
         removed = true;
         if(backing)
         {
            backing.helperFilter.fadeOff(15);
         }
         for each(_loc1_ in conditionalChildren)
         {
            if(_loc1_ is GameObject)
            {
               GameObject(_loc1_).remove();
            }
         }
         for each(_loc1_ in ambientsMap)
         {
            if(_loc1_ is GameSoundChannel)
            {
               GameSoundChannel(_loc1_).stop();
            }
         }
      }
      
      public function blink(param1:Boolean) : void
      {
         if(param1)
         {
            if(!blinkFilter)
            {
               blinkFilter = new GameObjectFilterBlink();
               blinkFilter.BlinkAlpha = 0.4;
               blinkFilter.Interval = 15;
               go.addFilter(blinkFilter);
            }
         }
         else if(blinkFilter)
         {
            blinkFilter.removeFilter = true;
            blinkFilter = null;
         }
      }
      
      public function getModifiedRotation() : Number
      {
         var _loc1_:GameObjectFilter = null;
         for each(_loc1_ in go.filters)
         {
            if(_loc1_ is GameObjectFilterRotateSlowly)
            {
               return GameObjectFilterRotateSlowly(_loc1_).internalRotation;
            }
         }
         return go.baseRotation;
      }
      
      public function hideChildren() : void
      {
         var _loc1_:GameObject = null;
         for each(_loc1_ in go.children)
         {
            _loc1_.hide();
         }
      }
      
      public function findNearest(param1:Class) : GameObject
      {
         var _loc4_:GameObject = null;
         var _loc2_:GameObject = null;
         var _loc3_:Number = 0;
         for each(_loc4_ in go.gs.objects)
         {
            if(_loc4_ is param1)
            {
               if(_loc4_ != go)
               {
                  if(_loc4_.distanceToObject(go) < _loc3_ || _loc2_ == null)
                  {
                     _loc3_ = _loc4_.distanceToObject(go);
                     _loc2_ = _loc4_;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function conditionallyCreateChild(param1:Object, param2:String, param3:Boolean, param4:Number = 0.05, param5:Function = null) : GameObject
      {
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         if(removed)
         {
            return null;
         }
         var _loc6_:GameObject = conditionalChildren[param2];
         if(!_loc6_)
         {
            if(param3)
            {
               if(param1 is Class)
               {
                  _loc7_ = new param1();
                  if(_loc7_ is GameObject)
                  {
                     _loc6_ = GameObject(_loc7_);
                  }
                  else
                  {
                     _loc6_ = new GameObject(null,_loc7_,go.zOrderString,go.basex,go.basey);
                  }
               }
               else if(param1 is Function)
               {
                  _loc6_ = GameObject(param1());
               }
               else
               {
                  _loc6_ = new GameObject(go.gs,param1,go.zOrderString,go.basex,go.basey);
               }
               if(Boolean(param5))
               {
                  param5(_loc6_);
               }
               conditionalChildren[param2] = _loc6_;
               _loc6_.baseAlpha = 0;
            }
         }
         if(_loc6_)
         {
            _loc8_ = int(conditionalChildrenAdjust[param2]);
            if(_loc8_ != go.ticks)
            {
               if(param3)
               {
                  _loc6_.baseAlpha += param4;
               }
               else
               {
                  _loc6_.baseAlpha -= param4;
               }
            }
            conditionalChildrenAdjust[param2] = go.ticks;
            _loc6_.baseAlpha = Interpolation.lockValue(_loc6_.baseAlpha,0,1);
            if(!param3 && _loc6_.baseAlpha == 0)
            {
               _loc6_.remove();
               conditionalChildren[param2] = null;
            }
         }
         return _loc6_;
      }
      
      public function angleForVector(param1:Number, param2:Number) : Number
      {
         return Math.atan2(param2,param1) * 180 / Math.PI + 90 + GameConfig.referenceAngle;
      }
      
      public function containsFilter(param1:Class) : Boolean
      {
         var _loc2_:GameObjectFilter = null;
         for each(_loc2_ in go.filters)
         {
            if(_loc2_ is param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function lazyLoad(param1:String) : void
      {
         _lazyLoad = new SafeImageRequest(param1);
      }
      
      public function mapChildren(param1:Function) : void
      {
         var _loc2_:GameObject = null;
         for each(_loc2_ in go.children)
         {
            param1(_loc2_);
         }
      }
      
      public function vectorToObject(param1:GameObject) : Point
      {
         var _loc2_:Number = param1.basex - go.basex;
         var _loc3_:Number = param1.basey - go.basey;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         _loc2_ /= _loc4_;
         _loc3_ /= _loc4_;
         return new Point(_loc2_,_loc3_);
      }
      
      public function rotateVector(param1:Number, param2:Number, param3:Number = -9999999) : Point
      {
         if(param3 < -99999)
         {
            param3 = go.baseRotation;
         }
         var _loc4_:Number = Math.cos(-param3 * radianConst) * param1 * go.modifiedScaleX + Math.sin(-param3 * radianConst) * param2 * go.modifiedScaleY;
         var _loc5_:Number = -Math.sin(-param3 * radianConst) * param1 * go.modifiedScaleX + Math.cos(-param3 * radianConst) * param2 * go.modifiedScaleY;
         return new Point(_loc4_,_loc5_);
      }
   }
}

