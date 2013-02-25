/* Everything contained in
 * this project is under 
 * copyright @2013 Quiet Mile Studio
 */
package menus 
{
	import net.flashpunk.World;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class optionsWorld extends World
	{
		private var title:Text = new Text("OPTIONS", 512, 100);
		private var returnScreen:Text = new Text("RETURN", 512, 600);
		private var volume:Text = new Text("VOLUME SETTINGS", 512, 300);
		private var difficulty:Text = new Text("DIFFICULTY", 512, 400);
		
		private var selection:Number = 1;
		
		public function optionsWorld() 
		{
			//Add buttons
			addGraphic(title);
			title.scale = 6;
			title.centerOrigin();
			
			addGraphic(returnScreen);
			returnScreen.scale = 2;
			returnScreen.centerOrigin();
			
			addGraphic(volume);
			volume.scale = 2;
			volume.centerOrigin();
			
			addGraphic(difficulty);
			difficulty.scale = 2;
			difficulty.centerOrigin();
		}
		override public function update():void
		{
			//Selection Changer
			if ((Input.pressed(Key.DOWN)) && (selection == 0)) {
				selection = 1;
			}
			else if ((Input.pressed(Key.DOWN)) && (selection == 1)) {
				selection = 2;
			}
			else if ((Input.pressed(Key.DOWN)) && (selection == 2)) {
				selection = 3;
			}
			else if ((Input.pressed(Key.DOWN)) && (selection == 3)) {
				selection = 3;
			}
			else if ((Input.pressed(Key.UP)) && (selection == 1)) {
				selection = 1;
			}
			else if ((Input.pressed(Key.UP)) && (selection == 2)) {
				selection = 1;
			}
			else if ((Input.pressed(Key.UP)) && (selection == 3)) {
				selection = 2;
			}
			
			//World Selection
			if ((selection == 1) && (Input.pressed(Key.ENTER))) {
				FP.world = new volumeMenu();
				removeAll();
			}
			if ((selection == 2) && (Input.pressed(Key.ENTER))) {
				FP.world = new difficultyMenu();
			}
			if ((selection == 3) && (Input.pressed(Key.ENTER))) {
				FP.world = new mainMenu();
			}
			
			switch (selection) {
				case 1: volume.scale = 4;
						difficulty.scale = 2;
						returnScreen.scale = 2;
					break;
				case 2: difficulty.scale = 4; 
						volume.scale = 2; 
						returnScreen.scale = 2; 
					break;
				case 3: returnScreen.scale = 4;
						difficulty.scale = 2;
						volume.scale = 2;
					break;
			}
		}
		
	}

}