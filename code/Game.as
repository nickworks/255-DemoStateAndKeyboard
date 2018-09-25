package code {
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.events.Event;	
	
	public class Game extends MovieClip {
		
		private var keyboard:KeyboardInput;
		
		/**
		 * This stores the current scene using a FSM.
		 */
		private var gameScene:GameScene;

		public function Game() {
			
			keyboard = new KeyboardInput(stage);
			
			switchScene(new SceneTitle());			
			
			addEventListener(Event.ENTER_FRAME, gameLoop);
			stage.focus = stage; // doesn't work :(
		}
		private function gameLoop(e:Event):void {
			// do physics here!!
			
			if(gameScene) switchScene(gameScene.update(keyboard));
			
		} // ends gameLoop
		
		private function switchScene(newScene:GameScene):void {
			if(newScene){
				//switch scenes...
				if(gameScene) gameScene.onEnd();
				if(gameScene) removeChild(gameScene);					
				gameScene = newScene;
				addChild(gameScene);
				gameScene.onBegin();
			}
		} // ends switchScene()
		
	}
	
}

















