/* Everything contained in
 * this project is under 
 * copyright @2013 Wilson Miller
 */
package objects 
{
	import flash.display.Sprite;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import flash.geom.Point;
	
	public class pistolPickUp extends Entity
	{
		
		[Embed(source = "../../assets/gfx/pickups/gun.png")] private const ImgPistol:Class;
		private var pistolSprite:Spritemap = new Spritemap(ImgPistol, 96, 96);
		
	
		public function pistolPickUp() 
		{
			type = "pickupGun";
			layer = -50000;
			
			x = 350; y = 270;
			pistolSprite.scaleX = pistolSprite.scaleX / 2;
			pistolSprite.scaleY = pistolSprite.scaleY / 2;
			graphic = pistolSprite;
			pistolSprite.centerOrigin();
		}
		
		override public function update():void
		{
			
		}
		
	}

}