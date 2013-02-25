/* Everything contained in
 * this project is under 
 * copyright @2013 Wilson Miller
 */
package menuButtons 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	
	public class exitButton extends Entity
	{
		[Embed(source = "../../assets/gfx/buttons/exitButton.png")] private const ImgExitButton:Class;
		private var exitSprite:Spritemap = new Spritemap(ImgExitButton, 100, 50);
		
		public function exitButton() 
		{
			graphic = exitSprite;
		}
		
	}

}