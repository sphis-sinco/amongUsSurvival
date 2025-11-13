package sphis.survung;

import sphis.survung.debug.ScanlineTest;
import haxe.macro.Compiler;
import flixel.FlxG;
import flixel.FlxState;

class InitState extends FlxState
{
	override public function create()
	{
		super.create();

		if (Compiler.getDefine('SCANLINE_TEST') == "1")
			FlxG.switchState(ScanlineTest.new);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
