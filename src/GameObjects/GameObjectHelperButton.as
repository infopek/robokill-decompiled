package GameObjects
{
   public class GameObjectHelperButton
   {
      public var radioButtons:Array = null;
      
      public var go:GameObject;
      
      public var selected:Boolean = false;
      
      public function GameObjectHelperButton(param1:GameObject)
      {
         super();
         go = param1;
      }
      
      public function mHit() : void
      {
         var _loc1_:GameObject = null;
         if(radioButtons)
         {
            for each(_loc1_ in radioButtons)
            {
               _loc1_.setButtonOn(false);
               _loc1_.helperButton.selected = false;
            }
            go.setButtonOn(true);
            selected = true;
         }
      }
      
      public function update() : void
      {
      }
      
      public function setupRadioButtons(param1:Array, param2:Boolean = true) : void
      {
         var _loc3_:GameObject = null;
         for each(_loc3_ in param1)
         {
            _loc3_.helperButton.radioButtons = param1;
         }
         if(param2)
         {
            selected = true;
            go.setButtonOn(true);
         }
      }
      
      public function updatePrevNext(param1:GameObject, param2:GameObject) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(radioButtons)
         {
            param1.enableButton();
            param2.enableButton();
            _loc3_ = -1;
            _loc4_ = 0;
            while(_loc4_ < radioButtons.length)
            {
               if(radioButtons[_loc4_].helperButton.selected)
               {
                  _loc3_ = _loc4_;
               }
               _loc4_++;
            }
            if(_loc3_ == 0)
            {
               param1.disableButton();
            }
            if(_loc3_ == radioButtons.length - 1)
            {
               param2.disableButton();
            }
            if(param1.mHit())
            {
               if(_loc3_ == -1)
               {
                  radioButtons[0]._mHit(null);
               }
               else if(_loc3_ > 0)
               {
                  radioButtons[_loc3_ - 1]._mHit(null);
               }
            }
            if(param2.mHit())
            {
               if(_loc3_ == -1)
               {
                  radioButtons[0]._mHit(null);
               }
               else if(_loc3_ < radioButtons.length - 1)
               {
                  radioButtons[_loc3_ + 1]._mHit(null);
               }
            }
         }
      }
   }
}

