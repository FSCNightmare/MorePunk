/* Everything contained in
 * this project is under 
 * copyright @2013 Quiet Mile Studio
 */
package menus 
{
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	
	public class volumeMenu extends World
	{
		private var title:Text = new Text("VOLUME SETTINGS", 512, 100);
		private var returnScreen:Text = new Text("RETURN", 512, 600);
		private var selection:Number = 0;
		
		public function volumeMenu() 
		{
			addGraphic(title);
			title.scale = 4;
			title.centerOrigin();
			
			addGraphic(returnScreen);
			returnScreen.scale = 2;
			returnScreen.centerOrigin();
			
		}
		override public function update():void
		{
			if ((Input.pressed(Key.DOWN)) && (selection == 0)) {
				selection = 1;
			}
			if ((Input.check(Key.ENTER)) && (selection == 1)) {
				FP.world = new mainMenu();
			}
			
			switch (selection) {
				case 1:
						returnScreen.scale = 4;
					break;
			}
		}
		
	}

}