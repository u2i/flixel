package org.flixel.plugin.u2i
{
	import com.u2i.interfaces.IGame;
	
	import org.flixel.FlxG;
	import org.flixel.FlxGame;
	import org.flixel.FlxSound;
	
	public class FlixelGame extends FlxGame implements IGame
	{
		public function FlixelGame(GameSizeX:uint, GameSizeY:uint, InitialState:Class, Zoom:Number=1, GameFramerate:uint=60, FlashFramerate:uint=30, UseSystemCursor:Boolean=false)
		{
			super(GameSizeX, GameSizeY, InitialState, Zoom, GameFramerate, FlashFramerate, UseSystemCursor);
		}
		
		public function restartGame():void {}
		
		public function muteGame():void {
			FlxG.mute = true;
		}
		
		public function unmuteGame():void {
			FlxG.mute = false;
		}
		
		public function pauseGame():void {
			FlxG.paused = true;
			for each(var sound:FlxSound in FlxG.sounds.members) {
				sound.pause();
			}
		}
		
		public function unpauseGame():void {
			FlxG.paused = true;
			for each(var sound:FlxSound in FlxG.sounds.members) {
				sound.resume();
			}
		}
		
		public function destroyGame():void {}
	}
}