/* Everything contained in
 * this project is under 
 * copyright @2013 Quiet Mile Studio
 */
package menus 
{
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.Graphic;
	import menus.mainMenu;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class aboutWorld extends World
	{
		private var title:Text = new Text("ABOUT", 512, 100);
		private var aboutUs:Text = new Text("\n\nWILSON MILLER A.K.A 'THATONEGUY229': PROGRAMMER, CREATIVE WRITER\n\nNICK BAILEY A.K.A 'HALBERDGUARD': ASSET DESIGNER, MUSIC COMPOSER\n\nHUNTER YOUNG A.K.A 'NIGHTMARE': ASSET DESIGNER, ENVIRONMENTAL DESIGNER\n\nWILLIAM BLEDSOE A.K.A 'GILDEN THE CROW': SOUND EFFECTS\n\nCHRISTINE STALLINGS A.K.A 'GIGGLINGMENACE': INTERACTIVITY COORDINATOR", 512, 400);
		private var returnScreen:Text = new Text("RETURN", 512, 600);
		
		private var selection:Number = 0;
		
		public function aboutWorld() 
		{
			addGraphic(title);
			title.scale = 6;
			title.centerOrigin();
			
			addGraphic(aboutUs);
			aboutUs.scale = 1;
			aboutUs.centerOrigin();
			
			addGraphic(returnScreen);
			returnScreen.scale = 2;
			returnScreen.centerOrigin();
		}
		override public function update():void
		{
			if ((selection == 0) && (Input.pressed(Key.DOWN))) {
				selection = 1;
			}
			if ((selection == 1) && (Input.pressed(Key.ENTER))) {
				FP.world = new mainMenu;
			}
			
			switch (selection) {
				case 1: returnScreen.scale = 4;
			}
		}
		
	}

}