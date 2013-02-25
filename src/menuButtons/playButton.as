/* Everything contained in
 * this project is under 
 * copyright @2013 Wilson Miller
 */
package menuButtons 
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Spritemap;
	
	public class playButton extends Entity
	{
		[Embed(source = "../../assets/gfx/buttons/playButton.png")] private const ImgPlayButton:Class;
		private var playSprite:Spritemap = new Spritemap(ImgPlayButton, 100, 50);
		
		public function playButton() 
		{
			graphic = playSprite;
		}
		
	}

}