/* Everything contained in
 * this project is under 
 * copyright @2013 Wilson Miller
 */
package menuButtons 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	
	public class menuButton extends Entity
	{
		[Embed(source = "../../assets/gfx/buttons/menuButton.png")] private const ImgMenuButton:Class;
		private var menuSprite:Spritemap = new Spritemap(ImgMenuButton, 100, 50);
		
		public function menuButton() 
		{
			graphic = menuSprite;
		}
		
	}

}