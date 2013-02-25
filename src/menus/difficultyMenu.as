/* Everything contained in
 * this project is under 
 * copyright @2013 Quiet Mile Studio
 */package menus 
{
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	
	public class difficultyMenu extends World
	{
		private var title:Text = new Text("DIFFICULTY", 512, 100);
		private var easy:Text = new Text("EASY", 384, 400);
		private var medium:Text = new Text("MEDIUM", 512, 400);
		private var hard:Text = new Text("HARD", 640, 400);
		private var returnScreen:Text = new Text("RETURN", 512, 600);
		private var selection:Number = 1;
		public  var difficultyGame:Number = 1;
		
		public function difficultyMenu() 
		{
			addGraphic(title);
			title.scale = 6;
			title.centerOrigin();
			
			addGraphic(easy);
			easy.scale = 1;
			easy.centerOrigin();
			
			addGraphic(medium);
			medium.scale = 1;
			medium.centerOrigin();
			
			addGraphic(hard);
			hard.scale = 1;
			hard.centerOrigin();
			
			addGraphic(returnScreen);
			returnScreen.scale = 2;
			returnScreen.centerOrigin();
		}
		override public function update():void
		{
			//Difficulty selector
			if ((Input.pressed(Key.RIGHT))) {
				selection = (selection + 1);
			}
			if ((Input.pressed(Key.LEFT))) {
				selection = (selection - 1);
			}
			if ((Input.pressed(Key.RIGHT)) && (selection >= 3)) {
				selection = 3;
			}
			if ((Input.pressed(Key.LEFT)) && (selection <= 1)) {
				selection = 1;
			}
			//Go from selection to return
			if ((Input.pressed(Key.DOWN)) && (selection == 1)) {
				selection = 4;
			}
			if ((Input.pressed(Key.DOWN)) && (selection == 2)) {
				selection = 4;
			}
			if ((Input.pressed(Key.DOWN)) && (selection == 3)) {
				selection = 4;
			}
			//Go from return to selection
			if ((Input.pressed(Key.UP)) && (selection == 4)) {
				selection = 1;
			}
			//Text sizing
			switch (selection) {
				case 1:
						easy.scale = 3;
						medium.scale = 1;
						hard.scale = 1;
						returnScreen.scale = 2;
					break;
				case 2: 
						easy.scale = 1;
						medium.scale = 3;
						hard.scale = 1;
						returnScreen.scale = 2;
					break;
				case 3:
						easy.scale = 1;
						medium.scale = 1;
						hard.scale = 3;						
						returnScreen.scale = 2;
					break;
				case 4:
						easy.scale = 1;
						medium.scale = 1;
						hard.scale = 1;
						returnScreen.scale = 4;
					break;
			}
			//Selections
			if ((Input.pressed(Key.ENTER)) && (selection == 1)) {
				difficultyGame = 1; //easy
				FP.world = new optionsWorld();
			}
			if ((Input.pressed(Key.ENTER)) && (selection == 3)) {
				difficultyGame = 2; //medium
				FP.world = new optionsWorld();
			}
			if ((Input.pressed(Key.ENTER)) && (selection == 4)) {
				difficultyGame = 3; //hard
				FP.world = new optionsWorld();
			}
			if ((Input.pressed(Key.ENTER)) && (selection == 2)) {
				difficultyGame = difficultyGame; //hard
				FP.world = new optionsWorld();
			}
		}
	}
}