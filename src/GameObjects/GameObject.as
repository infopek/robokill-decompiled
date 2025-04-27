package GameObjects
{
   import GameConfigs.GameConfig;
   import GameScenes.*;
   import Particles.ParticleEmitter;
   import Particles.ParticleLayer;
   import Tools.*;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.*;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   
   public class GameObject
   {
      public static var idBase:int = 0;
      
      public static var matrixClip:MovieClip = new MovieClip();
      
      public var baseBrightness:Number = 1;
      
      public var loaded:Boolean = false;
      
      public var animFreeze:Boolean = false;
      
      public var dampenOrigin:Number = 1;
      
      public var modifiedAlpha:Number = 1;
      
      public var className:String;
      
      public var zOrderString:String;
      
      public var _mHasHit:Boolean = false;
      
      public var _toRemove:Boolean = false;
      
      public var tformFromParent:Boolean = true;
      
      public var debug:Boolean = false;
      
      public var justCreated:Boolean = true;
      
      public var m:MovieClip;
      
      public var ticks:int = 0;
      
      public var modifiedScaleX:Number = 1;
      
      public var modifiedScaleY:Number = 1;
      
      public var isInputEnterHit:Boolean = false;
      
      public var _on:Boolean = false;
      
      public var baseScaleX:Number = 1;
      
      public var baseScaleY:Number = 1;
      
      public var overGlow:Number = 1;
      
      public var lastX:Number = 0;
      
      public var lastY:Number = 0;
      
      public var helperButton:GameObjectHelperButton;
      
      public var isInputMaxLength:int = -1;
      
      public var name:String;
      
      public var disabled:Boolean = false;
      
      private var _tFormedY:Number;
      
      private var _tFormedX:Number;
      
      public var selectGlow:Number = 1;
      
      public var parent:GameObject;
      
      public var particles:Array;
      
      public var imClass:Class;
      
      public var animSpeed:Number = 0;
      
      public var lastModifiedX:Number = 0;
      
      public var lastModifiedY:Number = 0;
      
      public var isInput:Boolean = false;
      
      public var oldstr:String = "oldstrdefaultvalue";
      
      public var oldRotation:Number;
      
      public var helperFilter:GameObjectHelperFilter;
      
      public var conditionalParticles:Array;
      
      public var modifiedx:Number;
      
      public var modifiedy:Number;
      
      public var initialized:Boolean = false;
      
      public var pausesGame:Boolean = false;
      
      public var obj:DisplayObject;
      
      public var gs:GameScene;
      
      public var imageSet:Array;
      
      public var baseAlpha:Number = 1;
      
      public var independentRotation:Boolean = false;
      
      public var id:int = 0;
      
      public var baseHandleX:Number = 0.5;
      
      public var baseHandleY:Number = 0.5;
      
      public var _removed:Boolean = false;
      
      public var buttonBitmapDataOff:BitmapData;
      
      public var mainLayer:ParticleLayer;
      
      public var collision:GameObjectCollision;
      
      public var animStarted:Boolean = false;
      
      public var updateDespitePaused:Boolean = false;
      
      public var randTicks:int;
      
      public var oldScaleX:Number;
      
      public var oldScaleY:Number;
      
      public var baseHeight:Number;
      
      public var modifiedRotation:Number = 0;
      
      public var isGlobal:Boolean = false;
      
      public var baseRotation:Number = 0;
      
      public var baseWidth:Number;
      
      public var helperAnimation:GameObjectHelperAnimation;
      
      public var oldAlpha:Number;
      
      public var fontName:String;
      
      public var defaultCol:int;
      
      public var collisions:Array;
      
      public var buttonBitmapDataOn:BitmapData;
      
      public var showButtonOnOutline:Boolean = false;
      
      public var syncedSize:Boolean = false;
      
      public var defaultTextNum:int = 48;
      
      public var buttonTextOffsetX:Number = 0;
      
      public var hidden:Boolean = false;
      
      public var helper:GameObjectHelper;
      
      private var radianConst:Number = 0.017453292519943295;
      
      public var basex:Number;
      
      public var basey:Number;
      
      public var additive:Boolean = false;
      
      public var buttonDisabled:Boolean = false;
      
      public var animFrame:Number = 0;
      
      public var lastScreenY:Number = 0;
      
      public var filters:Array;
      
      public var lastScreenX:Number = 0;
      
      public var children:Array;
      
      public function GameObject(gameScene:GameScene, param2:Object, param3:String, param4:int, param5:int)
      {
         var _loc6_:Class = null;
         collisions = new Array();
         filters = new Array();
         particles = new Array();
         conditionalParticles = new Array();
         children = new Array();
         randTicks = Random.randInt(0,10000);
         fontName = GameConfig.fontName;
         super();
         if(gameScene == null)
         {
            gameScene = GameScene.current();
         }
         helper = new GameObjectHelper(this);
         helperFilter = new GameObjectHelperFilter(this);
         helperAnimation = new GameObjectHelperAnimation(this);
         ++idBase;
         id = idBase;
         defaultCol = GameConfig.fontColor;
         if(param2 == null)
         {
            obj = new TextField();
            TextField(obj).mouseEnabled = false;
            TextField(obj).selectable = false;
         }
         else if(param2 is Class)
         {
            _loc6_ = Class(param2);
            obj = new _loc6_();
         }
         else if(param2 is DisplayObject)
         {
            obj = DisplayObject(param2);
         }
         obj.alpha = 0;
         basex = param4;
         basey = param5;
         baseWidth = obj.width;
         baseHeight = obj.height;
         obj.x = basex;
         obj.y = basey;
         lastX = basex;
         lastY = basey;
         gameScene.objects.push(this);
         zOrderString = param3;
         m = gameScene.clipForZOrder(param3);
         m.addChild(obj);
         mainLayer = new ParticleLayer();
         mainLayer.parent = m;
         if(param2 is Class)
         {
            imClass = Class(param2);
         }
         gs = gameScene;
      }
      
      public function setupButton(param1:Object, param2:String, param3:Class = null, param4:Boolean = false, param5:Boolean = false) : void
      {
         var _loc6_:DisplayObject = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         var _loc11_:Class = null;
         var _loc12_:BitmapData = null;
         helperButton = new GameObjectHelperButton(this);
         this.name = param2;
         if(param1 is Class)
         {
            _loc11_ = Class(param1);
            if(param5 && Boolean(param3))
            {
               _loc8_ = new param3();
               _loc6_ = new param3();
               param3 = null;
            }
            else
            {
               _loc6_ = new _loc11_();
               _loc8_ = new _loc11_();
            }
            _loc7_ = new _loc11_();
         }
         else if(param1 is BitmapData)
         {
            _loc12_ = BitmapData(param1);
            _loc6_ = new Bitmap(_loc12_);
            _loc7_ = new Bitmap(_loc12_);
            _loc8_ = new Bitmap(_loc12_);
         }
         else
         {
            _loc6_ = DisplayObject(param1);
            _loc7_ = DisplayObject(param1);
            _loc8_ = DisplayObject(param1);
         }
         _loc6_.scaleX = 0.95;
         _loc6_.scaleY = 0.95;
         _loc6_.x = 0.025 * _loc6_.width;
         _loc6_.y = 0.025 * _loc6_.height;
         if(!param5)
         {
            if(param4)
            {
               _loc8_.filters = [new GlowFilter(16777215,0.6),new GlowFilter(16777215,0.6,16,16,2,1,true)];
            }
            else
            {
               _loc8_.filters = [new GlowFilter(16777215,0.6)];
            }
         }
         _loc6_.filters = [new GlowFilter(16777215,overGlow)];
         var _loc9_:SimpleButton = SimpleButton(obj);
         _loc9_.upState = _loc7_;
         _loc9_.overState = _loc8_;
         _loc9_.downState = _loc6_;
         _loc9_.useHandCursor = true;
         _loc9_.hitTestState = _loc7_;
         _loc9_.useHandCursor = param4;
         baseWidth = _loc7_.width;
         baseHeight = _loc7_.height;
         _loc9_.addEventListener(MouseEvent.CLICK,_mHit);
         var _loc10_:GameObject = new GameObject(gs,null,zOrderString,buttonTextOffsetX,-2);
         _loc10_.fontName = fontName;
         _loc10_.setText(param2.toUpperCase(),26,defaultCol);
         addChild(_loc10_);
         if(param3)
         {
            buttonBitmapDataOn = Bitmap(new param3()).bitmapData;
            buttonBitmapDataOff = Bitmap(_loc7_).bitmapData;
         }
      }
      
      public function setAlpha(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:GameObject = null;
         baseAlpha = param1;
         if(param2)
         {
            for each(_loc3_ in children)
            {
               _loc3_.setAlpha(param1,true);
            }
         }
      }
      
      public function distanceToPoint(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param1 - basex;
         var _loc4_:Number = param2 - basey;
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public function objectLoaded(param1:Event = null) : void
      {
         baseWidth = obj.width;
         baseHeight = obj.height;
         loaded = true;
      }
      
      public function setFrame(param1:int) : *
      {
         if(imageSet)
         {
            if(param1 >= 0 && param1 < imageSet.length)
            {
               Bitmap(obj).bitmapData = imageSet[param1];
            }
         }
      }
      
      public function disableButton() : void
      {
         var _loc1_:SimpleButton = null;
         if(obj is SimpleButton)
         {
            _loc1_ = SimpleButton(obj);
            _loc1_.enabled = false;
            baseAlpha = 0.5;
            buttonDisabled = true;
         }
      }
      
      public function pushScale(param1:Number, param2:Number) : void
      {
         modifiedScaleX *= param1;
         modifiedScaleY *= param2;
      }
      
      public function addConditionalParticleArray(param1:Array) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            conditionalParticles.push(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function collidesWith(param1:GameObject) : Boolean
      {
         if(!collision || !param1.collision)
         {
            return false;
         }
         collision.go = this;
         param1.collision.go = param1;
         return collision.collidesWith(param1.collision);
      }
      
      public function syncObj() : void
      {
         if(justCreated)
         {
            modifiedRotation = baseRotation;
            modifiedx = basex;
            modifiedy = basey;
            modifiedScaleX = baseScaleX;
            modifiedScaleY = baseScaleY;
         }
         lastScreenX = modifiedx;
         lastScreenY = modifiedy;
         if(parent)
         {
            if(tformFromParent)
            {
               parent._tformed(modifiedx,modifiedy);
               lastScreenX = parent._tFormedX;
               lastScreenY = parent._tFormedY;
               modifiedScaleX *= parent.modifiedScaleX;
               modifiedScaleY *= parent.modifiedScaleY;
            }
            else
            {
               lastScreenX += parent.modifiedx;
               lastScreenY += parent.modifiedy;
            }
            modifiedAlpha *= parent.modifiedAlpha;
         }
         if(!isGlobal)
         {
            lastScreenX -= gs.camX * dampenOrigin;
            lastScreenY -= gs.camY * dampenOrigin;
         }
         var _loc1_:Number = lastScreenX - (Math.cos(-modifiedRotation * radianConst) * int(baseWidth * baseHandleX * modifiedScaleX) + Math.sin(-modifiedRotation * radianConst) * int(baseHeight * baseHandleY * modifiedScaleY));
         var _loc2_:Number = lastScreenY - (-Math.sin(-modifiedRotation * radianConst) * int(baseWidth * baseHandleX * modifiedScaleX) + Math.cos(-modifiedRotation * radianConst) * int(baseHeight * baseHandleY * modifiedScaleY));
         if(!parent)
         {
         }
         obj.x = _loc1_;
         obj.y = _loc2_;
         if(_loc1_ + baseWidth * Math.abs(modifiedScaleX) + 20 < 0)
         {
            obj.visible = false;
            return;
         }
         if(_loc1_ - baseWidth * Math.abs(modifiedScaleX) - 20 > 800)
         {
            obj.visible = false;
            return;
         }
         obj.visible = !hidden;
         if(hidden)
         {
            modifiedAlpha = 0;
         }
         if(modifiedAlpha != oldAlpha)
         {
            obj.alpha = modifiedAlpha;
            oldAlpha = modifiedAlpha;
         }
         if(modifiedRotation != oldRotation)
         {
            oldRotation = modifiedRotation;
            obj.rotation = modifiedRotation;
         }
         if(modifiedScaleX != oldScaleX)
         {
            oldScaleX = modifiedScaleX;
            obj.scaleX = modifiedScaleX;
         }
         if(modifiedScaleY != oldScaleY)
         {
            obj.scaleY = modifiedScaleY;
            oldScaleY = modifiedScaleY;
         }
         if(additive)
         {
            obj.blendMode = BlendMode.ADD;
         }
      }
      
      public function stripText() : void
      {
         var _loc1_:GameObject = null;
         for each(_loc1_ in children)
         {
            _loc1_.remove();
         }
      }
      
      public function syncText() : void
      {
         if(!(obj is TextField))
         {
            return;
         }
         var _loc1_:TextField = TextField(obj);
         _loc1_.width = _loc1_.textWidth + 64;
         _loc1_.height = _loc1_.textHeight + 16;
         baseWidth = _loc1_.textWidth;
         baseHeight = _loc1_.textHeight;
      }
      
      public function pushAlpha(param1:Number) : void
      {
         modifiedAlpha *= param1;
      }
      
      public function remoteLoad(param1:String) : void
      {
         if(!obj is Loader)
         {
            return;
         }
         var _loc2_:Loader = Loader(obj);
         _loc2_.load(new URLRequest(param1));
         _loc2_.contentLoaderInfo.addEventListener(Event.COMPLETE,objectLoaded);
      }
      
      public function findChildrenByName(param1:String) : Array
      {
         var name:String = param1;
         return children.filter(function(param1:GameObject, param2:int, param3:Array):Boolean
         {
            return param1.name == name;
         });
      }
      
      public function remove() : void
      {
         var _loc1_:GameObjectFilter = null;
         var _loc2_:GameObject = null;
         if(_removed)
         {
            return;
         }
         gs.addOrphanedParticleLayer(mainLayer);
         if(m.contains(obj))
         {
            m.removeChild(obj);
         }
         else
         {
            trace("Does not contain");
         }
         for each(_loc1_ in filters)
         {
            _loc1_.remove(this);
         }
         for each(_loc2_ in children)
         {
            _loc2_.remove();
         }
         helper.handleRemove();
         _remove();
         _removed = true;
      }
      
      public function sind(param1:Number) : Number
      {
         return Math.sin(param1 * (Math.PI / 180));
      }
      
      public function enableButton() : void
      {
         var _loc1_:SimpleButton = null;
         if(obj is SimpleButton)
         {
            _loc1_ = SimpleButton(obj);
            _loc1_.enabled = true;
            baseAlpha = 1;
            buttonDisabled = false;
         }
      }
      
      public function screenBaseX() : Number
      {
         return basex - gs.camX;
      }
      
      public function screenBaseY() : Number
      {
         return basey - gs.camY;
      }
      
      public function bringToFront() : void
      {
         var _loc1_:MovieClip = gs.clipForZOrder(zOrderString);
         if(_loc1_.contains(obj))
         {
            _loc1_.setChildIndex(obj,0);
         }
      }
      
      private function _tformed(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = modifiedx;
         var _loc4_:Number = modifiedy;
         if(parent)
         {
            parent._tformed(modifiedx,modifiedy);
            _loc3_ = parent._tFormedX;
            _loc4_ = parent._tFormedY;
         }
         _tFormedX = _loc3_ + Math.cos(-modifiedRotation * radianConst) * param1 * modifiedScaleX + Math.sin(-modifiedRotation * radianConst) * param2 * modifiedScaleY;
         _tFormedY = _loc4_ + -Math.sin(-modifiedRotation * radianConst) * param1 * modifiedScaleX + Math.cos(-modifiedRotation * radianConst) * param2 * modifiedScaleY;
      }
      
      public function setupTextInput(param1:int = -1) : void
      {
         var _loc2_:TextField = null;
         if(obj is TextField)
         {
            _loc2_ = TextField(obj);
            _loc2_.selectable = true;
            _loc2_.mouseEnabled = true;
            _loc2_.type = TextFieldType.INPUT;
            if(param1 != -1)
            {
               _loc2_.maxChars = param1;
            }
            _loc2_.setSelection(_loc2_.text.length,_loc2_.text.length);
            GameSceneStack.focusObj = this;
         }
      }
      
      public function setGlobal(param1:Boolean) : void
      {
         var _loc2_:GameObject = null;
         isGlobal = param1;
         for each(_loc2_ in children)
         {
            _loc2_.setGlobal(param1);
         }
      }
      
      public function distanceToObject(param1:GameObject) : Number
      {
         var _loc2_:Number = param1.basex - basex;
         var _loc3_:Number = param1.basey - basey;
         return Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
      }
      
      public function setText(param1:String, param2:int = -1, param3:int = -1) : void
      {
         var _loc4_:TextField = null;
         var _loc5_:int = 0;
         var _loc6_:TextField = null;
         if(param1 == null)
         {
            param1 = "";
         }
         if(oldstr == null)
         {
            oldstr = "";
         }
         if(obj is TextField)
         {
            _loc4_ = TextField(obj);
            if(param1.length != oldstr.length && oldstr != "oldstrdefaultvalue")
            {
               _loc5_ = -1;
               if(m.contains(_loc4_))
               {
                  _loc5_ = m.getChildIndex(_loc4_);
                  m.removeChild(_loc4_);
               }
               _loc6_ = _loc4_;
               _loc4_ = new TextField();
               _loc4_.x = _loc6_.x;
               _loc4_.y = _loc6_.y;
               _loc4_.scaleX = _loc6_.scaleX;
               _loc4_.scaleY = _loc6_.scaleY;
               _loc4_.rotation = _loc6_.rotation;
               _loc4_.alpha = _loc6_.alpha;
               if(_loc5_ == -1)
               {
                  m.addChild(_loc4_);
               }
               else
               {
                  m.addChildAt(_loc4_,_loc5_);
               }
               obj = _loc4_;
            }
            oldstr = param1;
            if(param2 == -1)
            {
               param2 = defaultTextNum;
            }
            else
            {
               defaultTextNum = param2;
            }
            if(param3 == -1)
            {
               param3 = defaultCol;
            }
            else
            {
               defaultCol = param3;
            }
            _loc4_.defaultTextFormat = new TextFormat(fontName,param2,param3,true,true);
            _loc4_.embedFonts = true;
            if(param1.indexOf("<b>") != -1)
            {
               _loc4_.htmlText = param1;
            }
            else
            {
               _loc4_.text = param1;
            }
            syncText();
            syncedSize = false;
            _loc4_.selectable = false;
            _loc4_.mouseEnabled = false;
            if(param2 > 12 && _loc4_.filters.length < 1)
            {
               _loc4_.filters = [new DropShadowFilter(4 * (param2 / 48),45,0,1,0,0,1,0)];
            }
         }
      }
      
      public function changeZOrder(param1:String, param2:Boolean = false) : void
      {
         if(_removed)
         {
            return;
         }
         if(gs.clipForZOrder(zOrderString).contains(obj))
         {
            gs.clipForZOrder(zOrderString).removeChild(obj);
         }
         m = gs.clipForZOrder(param1);
         if(param2)
         {
            gs.clipForZOrder(param1).addChildAt(obj,0);
         }
         else
         {
            gs.clipForZOrder(param1).addChild(obj);
         }
         zOrderString = param1;
      }
      
      public function buttonOn() : Boolean
      {
         return _on;
      }
      
      public function mOverModified() : Boolean
      {
         if(Input.i.mouseX() > modifiedx - baseWidth / 2)
         {
            if(Input.i.mouseX() < modifiedx + baseWidth / 2)
            {
               if(Input.i.mouseY() > modifiedy - baseHeight / 2)
               {
                  if(Input.i.mouseY() < modifiedy + baseHeight / 2)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function _mHit(param1:Event) : void
      {
         if(gs.stackFading())
         {
            return;
         }
         if(hidden)
         {
            return;
         }
         if(buttonDisabled)
         {
            return;
         }
         if(buttonBitmapDataOn)
         {
            setButtonOn(!_on);
         }
         helperButton.mHit();
         _mHasHit = true;
      }
      
      public function update() : void
      {
         var i:int;
         var pe:ParticleEmitter = null;
         var go:GameObject = null;
         var frame:int = 0;
         var c:int = 0;
         var ostr:String = null;
         var str:String = null;
         if(_removed)
         {
            return;
         }
         if(disabled)
         {
            obj.alpha = 0;
            return;
         }
         if(obj is TextField)
         {
            syncText();
         }
         if(imageSet)
         {
            if(animSpeed > 0)
            {
               if(!animStarted)
               {
                  animFrame = Math.random() * imageSet.length;
                  animStarted = true;
               }
               if(!animFreeze)
               {
                  animFrame += 1 / animSpeed;
               }
               frame = int(animFrame) % imageSet.length;
               Bitmap(obj).bitmapData = imageSet[frame];
            }
         }
         if(!initialized)
         {
            initialized = true;
            _init();
         }
         helper.update();
         helperAnimation.update();
         if(helperButton)
         {
            helperButton.update();
         }
         ++ticks;
         ++randTicks;
         justCreated = false;
         modifiedRotation = baseRotation;
         lastModifiedX = modifiedx;
         lastModifiedY = modifiedy;
         modifiedx = basex;
         modifiedy = basey;
         modifiedScaleX = baseScaleX;
         modifiedScaleY = baseScaleY;
         if(parent != null)
         {
            modifiedRotation = parent.modifiedRotation + baseRotation;
            if(independentRotation)
            {
               modifiedRotation = baseRotation;
            }
         }
         modifiedAlpha = baseAlpha;
         i = 0;
         while(i < filters.length)
         {
            GameObjectFilter(filters[i]).update(this);
            i++;
         }
         filters = filters.filter(function blah(param1:Object, param2:int, param3:Array):Boolean
         {
            return !GameObjectFilter(param1).removeFilter;
         });
         for each(pe in particles)
         {
            pe.emitOnto(mainLayer,tformedX(pe.x,pe.y),tformedY(pe.x,pe.y));
         }
         for each(go in children)
         {
            go.update();
         }
         mainLayer.x = gs.camX;
         mainLayer.y = gs.camY;
         if(mainLayer.particles.length > 0)
         {
            mainLayer.update();
         }
         if(isInput)
         {
            c = 0;
            while(c < 255)
            {
               if(Input.i.keyHit(c))
               {
                  if(c == 13)
                  {
                     isInputEnterHit = true;
                  }
                  else if(c == 8)
                  {
                     ostr = TextField(obj).text;
                     if(ostr.length > 1)
                     {
                        setText(ostr.slice(0,ostr.length - 1));
                     }
                     else
                     {
                        setText("");
                     }
                  }
                  else
                  {
                     str = numToChar(c);
                     ostr = TextField(obj).text;
                     if(str.length > 0)
                     {
                        if(ostr.length < isInputMaxLength || isInputMaxLength == -1)
                        {
                           setText(ostr + str);
                        }
                     }
                  }
               }
               c++;
            }
         }
         _update();
         if(_toRemove)
         {
            remove();
         }
      }
      
      public function mOver() : Boolean
      {
         if(Input.i.mouseX() > basex - baseWidth / 2)
         {
            if(Input.i.mouseX() < basex + baseWidth / 2)
            {
               if(Input.i.mouseY() > basey - baseHeight / 2)
               {
                  if(Input.i.mouseY() < basey + baseHeight / 2)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function tintClip(param1:DisplayObject, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Array = new Array();
         _loc5_ = _loc5_.concat([param2,param3,param4,0,0]);
         _loc5_ = _loc5_.concat([param4,param2,param3,0,0]);
         _loc5_ = _loc5_.concat([param3,param4,param2,0,0]);
         _loc5_ = _loc5_.concat([0,0,0,1,0]);
         var _loc6_:BitmapFilter = new ColorMatrixFilter(_loc5_);
         param1.filters = new Array(_loc6_);
      }
      
      public function show() : void
      {
         hidden = false;
      }
      
      public function removeChild(param1:GameObject) : void
      {
         var go:GameObject = param1;
         go.parent = null;
         children = children.filter(function(param1:Object, param2:int, param3:Array):*
         {
            return param1 != go;
         });
      }
      
      public function tformedWithoutParent(param1:Number, param2:Number) : Point
      {
         var _loc3_:Number = modifiedx + cosd(-modifiedRotation) * param1 * baseScaleX + sind(-modifiedRotation) * param2 * baseScaleY;
         var _loc4_:Number = modifiedy + -sind(-modifiedRotation) * param1 * baseScaleX + cosd(-modifiedRotation) * param2 * baseScaleY;
         return new Point(_loc3_,_loc4_);
      }
      
      public function mask() : void
      {
         var _loc4_:int = 0;
         if(!obj is Bitmap)
         {
            return;
         }
         var _loc1_:Bitmap = Bitmap(obj);
         var _loc2_:BitmapData = _loc1_.bitmapData;
         _loc2_.lock();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.width)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc2_.height)
            {
               if(_loc2_.getPixel32(_loc3_,_loc4_) == 4278190080)
               {
                  _loc2_.floodFill(_loc3_,_loc4_,0);
               }
               _loc4_++;
            }
            _loc3_++;
         }
         _loc2_.unlock();
      }
      
      public function addChild(param1:GameObject) : void
      {
         param1.parent = this;
         children.push(param1);
      }
      
      public function globalX() : Number
      {
         var _loc1_:Number = basex;
         if(parent)
         {
            _loc1_ = parent.tformedX(basex,basey);
         }
         return _loc1_;
      }
      
      public function drawToPixmap(param1:DisplayObject, param2:int, param3:int, param4:int = 0, param5:Number = 1, param6:Number = 1, param7:String = "normal") : *
      {
         var _loc8_:BitmapData = Bitmap(obj).bitmapData;
         param1.x = param2;
         param1.y = param3;
         param1.scaleX = param5;
         param1.scaleY = param6;
         param1.rotation = param4;
         _loc8_.draw(param1,param1.transform.matrix,null,param7);
      }
      
      public function globalY() : Number
      {
         var _loc1_:Number = basey;
         if(parent)
         {
            _loc1_ = parent.tformedY(basex,basey);
         }
         return _loc1_;
      }
      
      public function position(param1:Number, param2:Number) : void
      {
         basex = param1;
         basey = param2;
      }
      
      public function setHandle(param1:Number, param2:Number, param3:Boolean = true) : *
      {
         var _loc4_:GameObject = null;
         baseHandleX = param1;
         baseHandleY = param2;
         if(param3)
         {
            for each(_loc4_ in children)
            {
               _loc4_.setHandle(param1,param2,param3);
            }
         }
      }
      
      public function setButtonOn(param1:Boolean) : void
      {
         var _loc2_:BitmapData = null;
         var _loc3_:SimpleButton = null;
         _on = param1;
         if(buttonBitmapDataOn)
         {
            if(_on)
            {
               _loc2_ = buttonBitmapDataOn;
            }
            else
            {
               _loc2_ = buttonBitmapDataOff;
            }
            _loc3_ = SimpleButton(obj);
            Bitmap(_loc3_.upState).bitmapData = _loc2_;
            Bitmap(_loc3_.downState).bitmapData = _loc2_;
            Bitmap(_loc3_.overState).bitmapData = _loc2_;
         }
         if(showButtonOnOutline || !buttonBitmapDataOn)
         {
            if(_on)
            {
               obj.filters = [new GlowFilter(16764160,selectGlow,12,12,3)];
            }
            else
            {
               obj.filters = new Array();
            }
         }
      }
      
      public function tint(param1:Number, param2:Number, param3:Number) : void
      {
         tintClip(obj,param1,param2,param3);
      }
      
      public function emitConditionalParticles(param1:String, param2:Number = 0, param3:Number = 0, param4:Boolean = false, param5:Number = 0) : Array
      {
         var _loc7_:ParticleEmitter = null;
         if(_removed)
         {
            return null;
         }
         var _loc6_:Array = null;
         for each(_loc7_ in conditionalParticles)
         {
            if(_loc7_.Name == param1)
            {
               if(param4)
               {
                  _loc6_ = _loc7_.emitOnto(mainLayer,param2,param3,param5,gs.particleKilledCallback);
               }
               else
               {
                  _loc6_ = _loc7_.emitOnto(mainLayer,tformedX(_loc7_.x + param2,_loc7_.y + param3),tformedY(_loc7_.x + param2,_loc7_.y + param3),param5,gs.particleKilledCallback);
               }
            }
         }
         return _loc6_;
      }
      
      public function hide() : void
      {
         hidden = true;
      }
      
      public function tformedX(param1:Number, param2:Number) : Number
      {
         _tformed(param1,param2);
         return _tFormedX;
      }
      
      public function tformedY(param1:Number, param2:Number) : Number
      {
         _tformed(param1,param2);
         return _tFormedY;
      }
      
      public function rotate(param1:Number) : void
      {
         baseRotation = param1;
      }
      
      public function addFilter(param1:GameObjectFilter) : void
      {
         filters.push(param1);
      }
      
      public function setButtonText(param1:String, param2:int = -1) : void
      {
         var _loc3_:GameObject = children[0];
         _loc3_.setText(param1,param2);
      }
      
      public function angleToObject(param1:GameObject) : Number
      {
         return Math.atan2(param1.globalY() - globalY(),param1.globalX() - globalX()) * 180 / Math.PI;
      }
      
      private function numToChar(param1:int) : String
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(param1 > 47 && param1 < 58)
         {
            _loc2_ = "0123456789";
            return _loc2_.charAt(param1 - 48);
         }
         if(param1 > 64 && param1 < 91)
         {
            _loc3_ = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            return _loc3_.charAt(param1 - 65);
         }
         if(param1 > 96 && param1 < 123)
         {
            _loc4_ = "abcdefghijklmnopqrstuvwxyz";
            return _loc4_.charAt(param1 - 97);
         }
         return "";
      }
      
      public function _remove() : void
      {
      }
      
      public function drawToImage(param1:Object, param2:int, param3:int, param4:int = 0, param5:Number = 1, param6:Number = 1, param7:String = "erase", param8:Rectangle = null, param9:Array = null) : *
      {
         var _loc12_:BitmapData = null;
         var _loc13_:BitmapData = null;
         var _loc10_:BitmapData = Bitmap(obj).bitmapData;
         var _loc11_:Object = param1;
         matrixClip.scaleX = param5;
         matrixClip.scaleY = param6;
         matrixClip.rotation = param4;
         matrixClip.x = param2 - basex + _loc10_.width / 2;
         matrixClip.y = param3 - basey + _loc10_.height / 2;
         if(param9)
         {
            tintClip(matrixClip,param9[0],param9[1],param9[2]);
            _loc12_ = new BitmapData(_loc11_.width,_loc11_.height,true);
            if(param1 is BitmapData)
            {
               _loc13_ = BitmapData(param1);
            }
            else
            {
               _loc13_ = Bitmap(_loc11_).bitmapData;
            }
            _loc12_.applyFilter(_loc13_,new Rectangle(0,0,_loc11_.width,_loc11_.height),new Point(0,0),matrixClip.filters[0]);
            _loc11_ = _loc12_;
         }
         if(_loc11_ is IBitmapDrawable)
         {
            _loc10_.draw(IBitmapDrawable(_loc11_),matrixClip.transform.matrix,null,param7,param8,true);
         }
         else
         {
            trace("ILLEGAL BITMAP DRAW!!");
         }
      }
      
      public function cosd(param1:Number) : Number
      {
         return Math.cos(param1 * (Math.PI / 180));
      }
      
      public function setFrameFromRange(param1:Number, param2:Number, param3:Array) : void
      {
         var _loc4_:Number = Number(param1) / Number(param2);
         var _loc5_:int = _loc4_ * param3.length;
         if(_loc5_ < 0)
         {
            _loc5_ = 0;
         }
         if(_loc5_ > param3.length - 1)
         {
            _loc5_ = int(param3.length - 1);
         }
         Bitmap(obj).bitmapData = param3[_loc5_];
      }
      
      public function move(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 * cosd(-baseRotation) + sind(-baseRotation) * param2;
         var _loc4_:Number = param1 * -sind(-baseRotation) + cosd(-baseRotation) * param2;
         basex += _loc3_;
         basey += _loc4_;
      }
      
      public function setFrameFromSignedRange(param1:Number, param2:Number, param3:Number, param4:Array) : void
      {
         if(param1 < param2)
         {
            param1 = param2;
         }
         if(param1 > param3)
         {
            param1 = param3;
         }
         return setFrameFromRange(param1 - param2,param3 - param2,param4);
      }
      
      public function tformed(param1:Number, param2:Number) : Point
      {
         _tformed(param1,param2);
         return new Point(_tFormedX,_tFormedY);
      }
      
      public function mHit() : Boolean
      {
         var _loc1_:Boolean = _mHasHit;
         _mHasHit = false;
         return _loc1_;
      }
      
      public function _update() : void
      {
      }
      
      public function _init() : void
      {
      }
   }
}

