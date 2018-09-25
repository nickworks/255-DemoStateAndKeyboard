package code {
	
	public class ScenePlay extends GameScene {

		private var player:Player;
		
		public function ScenePlay() {
			
			player = new Player();
			addChild(player);
			
		}
		
		override public function update(keyboard:KeyboardInput):GameScene {
			player.update(keyboard);
			
			
			// TODO: ADD FSM TRANSITIONS HERE
			
			if(player.y > 100) return new SceneLose();
			
			return null;
		}

	}
	
}
