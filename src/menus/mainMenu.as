/* Everything contained in
 * this project is under 
 * copyright @2013 Quiet Mile Studio
 */
package menus
{
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import menuButtons.*;
	import worlds.starterWorld;
	import menus.optionsWorld;
	import menus.aboutWorld;
	import net.flashpunk.utils.*;
	
	public class mainMenu extends World
	{
		//[Embed(source = "../../assets/gfx/logos/logoWithAlpha.jpg")] protected const ImgTitle:Class;
		//private var titleSprite:Spritemap = new Spritemap(ImgTitle, 320, 130);
		
		public var play:Text = new Text("PLAY", 512, 300); 
		public var options:Text = new Text("OPTIONS", 512, 400);
		public var about:Text = new Text("ABOUT", 512, 500);
		public var title:Text = new Text("FATE", 512, 100);
		
		private var selection:Number = 0;
		
		public function mainMenu()
		{	
			FP.screen.color = 0x000000;
			
			//addGraphic(titleSprite);
			
			//titleSprite.x = 320; titleSprite.y = 100;
			//titleSprite.centerOrigin();
			
			addGraphic(play);
			play.scale = 2;
			play.centerOrigin();
			
			addGraphic(options);
			options.scale = 2;
			options.centerOrigin();
			
			addGraphic(about);
			about.scale = 2;
			about.centerOrigin();
			
			addGraphic(title);
			title.scale = 6;
			title.centerOrigin();
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
				selection = 2;
			}
			if ((Input.pressed(Key.UP)) && (selection == 0)) {
				selection = 0;
			}
			else if ((Input.pressed(Key.UP)) && (selection == 1)) {
				selection = 0;
			}
			else if ((Input.check(Key.UP)) && (selection == 2)) {
				selection = 1;
			}
			
			//World Selection
			if ((selection == 0) && (Input.pressed(Key.ENTER))) {
				FP.world = new starterWorld();
				removeAll();
			}
			if ((selection == 1) && (Input.pressed(Key.ENTER))) {
				FP.world = new optionsWorld();
			}
			if ((selection == 2) && (Input.pressed(Key.ENTER))) {
				FP.world = new aboutWorld();
			}
			
			switch (selection) {
				case 0: play.scale = 4;
						options.scale = 2;
						about.scale = 2;
					break;
				case 1: options.scale = 4; 
						play.scale = 2; 
						about.scale = 2; 
					break;
				case 2: about.scale = 4;
						play.scale = 2;
						options.scale = 2;
					break;
			}
		}
	}
}