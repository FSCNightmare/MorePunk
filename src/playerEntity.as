/* Everything contained in
 * this project is under 
 * copyright @2013 Quiet Mile Studio
 */
package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	import objects.pistolPickUp;
	import net.flashpunk.graphics.Text;
	import flash.net.SharedObject;
	
	public class playerEntity extends Entity
	{
		[Embed(source = "../assets/gfx/player/playerSheet.png")] private const ImgPlayer:Class; //17*35
		private var playerSprite:Spritemap = new Spritemap(ImgPlayer, SPRITE_WIDTH, SPRITE_HEIGHT);
		private var pistol:pistolPickUp;
		
		public const SPRITE_WIDTH:Number = 17;
		public const SPRITE_HEIGHT:Number = 35;
		
		private var gunHolster_1:Number = 0;
		private var gunHolster_2:Number = 1;
		
		public var regAnimation:String = "stand_down";
		
		public var saveDataObject:SharedObject;
		public var myDataObject:Object = {playerX:playerEntity.x, playerY:playerEntity.y}
		
		public function playerEntity()
		{
			myDataObject.playerX = playerEntity.x;
			myDataObject.playerY = playerEntity.y;
			
			saveDataObject = SharedObject.getLocal("slot1");
			type = "player";
			layer = -100000;
			
			setHitbox(17, 35);
			setupSpritesheet();
			
			
			x = 512; y = 384;
			//playerSprite.scale = 2;
			
			graphic = new Text("Z"); //For pickup
			
			playerSprite.centerOrigin(); //Centers player sprite for flipping of image
			graphic = playerSprite;
			
			Input.define("UP", Key.UP);
			Input.define("DOWN", Key.DOWN);
			Input.define("RIGHT", Key.RIGHT);
			Input.define("LEFT", Key.LEFT);
			
			Input.define("PICKUP", Key.Z);
		}
		
		override public function update():void
		{
			var horizontalMovement:Boolean = true;
			var verticalMovement:Boolean = true;
			var diagonalMovementUp:Boolean = true;
			var diagonalMovementDown:Boolean = true;
			
			playerSprite.play(regAnimation);
			
			//Movement UpDownLeftRight
			if (Input.check("UP")) {
				y -= 2;
				regAnimation = "walk_up";
				playerSprite.scaleX = 1;
			}
			else if (Input.check("DOWN")) {
				y += 2;
				regAnimation = "walk_down";
				playerSprite.scaleX = 1;
			}
			else verticalMovement = false;
			if (Input.check("LEFT")) {
				x -= 2;
				regAnimation = "walk_left";
				playerSprite.scaleX = 1;
			}
			else if (Input.check("RIGHT")) {
				x += 2;
				regAnimation = "walk_right";
				playerSprite.scaleX = -1;
			}
			else horizontalMovement = false;
			//Movement Diagonals
			if (Input.check("UP") && Input.check("RIGHT")) {
				playerSprite.play("walk_upright");
				playerSprite.scaleX = -1;
			}
			else if (Input.check("UP") && Input.check("LEFT"))
			{
				playerSprite.play("walk_upleft");
				playerSprite.scaleX = 1;
			}
			if (Input.check("DOWN") && Input.check("RIGHT")) {
				playerSprite.play("walk_downright");
				playerSprite.scaleX = -1;
			}
			else if (Input.check("DOWN") && Input.check("LEFT"))
			{
				playerSprite.play("walk_downleft");
				playerSprite.scaleX = 1;
			}
			else
			
			if ((!horizontalMovement) && (!verticalMovement) && (!diagonalMovementDown) && (!diagonalMovementUp)) {
				switch (regAnimation) {
					case "walk_left": regAnimation = "stand_left"; break;
					case "walk_right": regAnimation = "stand_right"; break;
					case "walk_up": regAnimation = "stand_up"; break;
					case "walk_down": regAnimation = "stand_down"; break;
				}
			}
		}
		
		public function setupSpritesheet():void
		{
			//SpriteSheet for player
			playerSprite.add("walk_right", [2], 0, false);
			playerSprite.add("walk_left", [2], 0, false);
			playerSprite.add("walk_up", [4], 0, false);
			playerSprite.add("walk_down", [0], 0, false);
			playerSprite.add("walk_upright", [3], 0, false);
			playerSprite.add("walk_upleft", [3], 0, false);
			playerSprite.add("walk_downright", [1], 0, false);
			playerSprite.add("walk_downleft", [1], 0, false);
			
			playerSprite.add("stand_down", [0], 0, false);
			playerSprite.add("stand_up", [4], 0, false);
			playerSprite.add("stand_right", [2], 0, false);
			playerSprite.add("stand_left", [2], 0, false);
			playerSprite.add("stand_upright", [3], 0, false);
			playerSprite.add("stand_upleft", [3], 0, false);
			playerSprite.add("stand_downright", [1], 0, false);
			playerSprite.add("stand_downleft", [1], 0, false);
		}
	}
}