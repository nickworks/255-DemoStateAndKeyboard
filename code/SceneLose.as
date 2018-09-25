package code {
	
	import flash.display.MovieClip;
	
	
	public class SceneLose extends GameScene {
		
		
		public function SceneLose() {
			// constructor code
		}
		override public function update(keyboard:KeyboardInput):GameScene {
			
			if(keyboard.keyEnter) return new SceneTitle();
			
			return null;
		}
	}
	
}
