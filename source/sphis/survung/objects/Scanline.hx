package sphis.survung.objects;

import flixel.FlxSprite;
import sphis.survung.backend.Paths;

class Scanline extends FlxSprite
{
	var tick:Int = 0;

	override public function new()
	{
		super();

		loadGraphic(Paths.getImage('scanlines'));
	}

	override function update(elapsed:Float)
	{
		tick++;

		if (tick % 2 == 0)
			offset.set(0, -1);
		else
			offset.set(0, 0);
	}
}
