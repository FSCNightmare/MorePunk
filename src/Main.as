/* Everything contained in
 * this project is under 
 * copyright @2013 Quiet Mile Studio
 */
package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import worlds.starterWorld;
	import menus.mainMenu;
	
	[SWF(width = "1024", height = "768", frameRate = 60)];
	
	public class Main extends Engine
	{
		public function Main()
		{
			super(1024, 768, 60, false);
		}
		override public function init():void
		{
			FP.world = new mainMenu();
		}
	}
}