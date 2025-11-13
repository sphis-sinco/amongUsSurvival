package sphis.survung.backend;

class Paths
{
	public static inline function getAssetPath(path:String):String
		return 'assets/' + path;

	public static inline function getImagePath(path:String):String
		return getAssetPath('images/' + path);

	public static inline function getImage(image:String):String
		return getImagePath(image + '.png');
}
