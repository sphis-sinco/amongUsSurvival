package sphis.survung;

import openfl.Lib;
import openfl.display.Screen;
import lime.app.Application;
import sphis.survung.debug.ScanlineTest;
import haxe.macro.Compiler;
import flixel.FlxG;
import flixel.FlxState;

class InitState extends FlxState
{
	override public function create()
	{
		super.create();

		FlxG.resizeWindow(256 * 3, 256 * 3);

		var window = Lib.application.window;
		var currentScreen = Screen.mainScreen; // Or iterate through Screen.screens to find the relevant one

		if (currentScreen != null)
		{
			var screenWidth = currentScreen.bounds.width;
			var screenHeight = currentScreen.bounds.height;

			// Adjust for window scaling if applicable (e.g., high-DPI displays)
			var windowWidth = window.width * window.scale;
			var windowHeight = window.height * window.scale;

			var centerX = (screenWidth - windowWidth) / 2;
			var centerY = (screenHeight - windowHeight) / 2;

			window.x = Math.floor(centerX);
			window.y = Math.floor(centerY);

			trace('Centered window');
		}
		else
		{
			trace('Window cannot be centered due to null main screen');
		}

		if (Compiler.getDefine('SCANLINE_TEST') == "1")
			FlxG.switchState(ScanlineTest.new);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
