/* Everything contained in
 * this project is under 
 * copyright @2013 Quiet Mile Studio
 */
package worlds
{
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.Entity;
	import net.flashpunk.utils.*;
	import objects.pistolPickUp;
	import objects.saveEntity;
	
	public class starterWorld extends World
	{
		private var pistol:pistolPickUp;
		protected var player:playerEntity;
		public var save:saveEntity;
		
		
		public function starterWorld()
		{
			
			FP.screen.color = 0xffffff;
			player = new playerEntity;
			pistol = new pistolPickUp;
			save = new saveEntity;
			
			add(pistol);
			add(player);
			add(save);
			
		}
		override public function begin():void
		{
			Data.load("slot1");
		}
		
		
	}
		
	
}