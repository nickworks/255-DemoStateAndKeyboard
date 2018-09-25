package code {
	import flash.display.MovieClip;
	
	/**
	 * This class is an ABSTRACT class for our
	 * GameScene FSM. All game scenes are child classes
	 * of this class.
	 */
	public class GameScene extends MovieClip {

		/**
		 * Each game scene should OVERRIDE this method
		 * and add specific implementation.
		 */
		public function update(keyboard:KeyboardInput):GameScene {
			trace("tick");
			return null;
		}
		public function onBegin():void {
			
		}
		public function onEnd():void {
			
		}

	}
}
