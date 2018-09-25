package code {
	
	import flash.display.MovieClip;
	
	
	public class Player extends MovieClip {
		
		
		public function Player() {
			// constructor code
		}
		public function update(keyboard:KeyboardInput):void {
			// if left key is down, move left...
			
			if(keyboard.keyLeft) x -= 5;
			if(keyboard.keyUp) y -= 5;
			if(keyboard.keyRight) x += 5;
			if(keyboard.keyDown) y += 5;
		
		}
	}
}
