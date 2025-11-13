package sphis.survung.debug;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import sphis.survung.objects.Scanline;

class ScanlineTest extends FlxState
{
	override function create()
	{
		super.create();

        add(new FlxSprite().makeGraphic(FlxG.width, FlxG.height));
        add(new Scanline());
	}
}
