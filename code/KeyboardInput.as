package code {
	import flash.events.KeyboardEvent;
	import flash.display.Stage;
	
	public class KeyboardInput {

		public var keyLeft:Boolean = false;
		public var keyUp:Boolean = false;
		public var keyRight:Boolean = false;
		public var keyDown:Boolean = false;
		public var keyEnter:Boolean = false;
		
		public function KeyboardInput(stage:Stage) {
			stage.addEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, handleKeyUp);
		}
		private function updateKey(keyCode:int, isDown:Boolean):void {
			
			if(keyCode == 13) keyEnter = isDown;
			if(keyCode == 37) keyLeft = isDown;
			if(keyCode == 38) keyUp = isDown;
			if(keyCode == 39) keyRight = isDown;
			if(keyCode == 40) keyDown = isDown;
		}
		private function handleKeyDown(e:KeyboardEvent):void {
			//trace(e.keyCode);
			updateKey(e.keyCode, true);
		}
		private function handleKeyUp(e:KeyboardEvent):void {
			
			updateKey(e.keyCode, false);
		}
		

	}
	
}
