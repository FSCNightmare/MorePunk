/* Everything contained in
 * this project is under 
 * copyright @2013 Quiet Mile Studio
 */
package objects 
{
	import net.flashpunk.FP;
	import net.flashpunk.Entity;
	import net.flashpunk.utils.*;
	public class saveEntity extends Entity
	{
		public var save:Data;
		
		public function saveEntity() 
		{
			
		}
		override public function update():void
		{
			if ((Input.check(Key.CONTROL)) && (Input.check(Key.S))) {
				Data.save("slot1");
			}
		}
		
	}

}