package org.robotlegs.utilities.flexiblelogger.view {
	
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.display.Shape;
	import flash.events.MouseEvent;
	import gs.TweenLite;
	
	public class HideableLogTextView extends Sprite {
		
		private var _logTextField:TextField;
		
		private const ON_SCREEN_POSITION:Number = 600;
		private const OFF_SCREEN_POSITION:Number = 800;
		
		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		/**
		 * 
		 * 
		 */
		
		public function HideableLogTextView() {			
			init();
		}
		
		public function get logTextField():TextField
		{
			return _logTextField;
		}
		
		private function init():void{
			createLogTextField();
			createToggleButton();
			x = ON_SCREEN_POSITION;
		}
		
		
		private function createLogTextField():void{
			_logTextField = new TextField();
			_logTextField.x = 0;
			_logTextField.y = 20;
			_logTextField.width = 200;
			_logTextField.height = 400;
			_logTextField.border = true;
			_logTextField.multiline = true;
			_logTextField.wordWrap = true;
			_logTextField.background = true;
			_logTextField.backgroundColor = 0xFFFFFF;
			_logTextField.textColor = 0x000000;
			_logTextField.alpha = 0.6;
			_logTextField.defaultTextFormat = new TextFormat("_sans");
			addChild(_logTextField);
		}
		
		private function createToggleButton():void{
			var shape:Shape = new Shape();
			shape.graphics.beginFill(0xFFFFFF, 0.6);
			shape.graphics.drawRect(0, 20, -20, 20);
			var sprite:Sprite = new Sprite();
			sprite.addChild(shape);
			addChild(sprite);
		    sprite.buttonMode = true;
			sprite.addEventListener(MouseEvent.CLICK, toggleOnAndOffScreen);
		}
		
		private function toggleOnAndOffScreen(e:MouseEvent):void
		{
			var targetXPosition:Number = ON_SCREEN_POSITION;
			
			if(x == ON_SCREEN_POSITION)
			{
				targetXPosition = OFF_SCREEN_POSITION;
			}
			
			TweenLite.to(this, 1, {x:targetXPosition});
		}
		
		
	}
}