package backend;

class Language
{
	public static var defaultLangName:String = 'English (US)'; //en-US
	public static function reloadPhrases()
	{
		AlphaCharacter.loadAlphabetData();
	}

	inline public static function getPhrase(key:String, ?defaultPhrase:String, values:Array<Dynamic> = null):String
	{
		var str:String = defaultPhrase;

		if(str == null)
			str = key;
		
		if(values != null)
			for (num => value in values)
				str = str.replace('{${num+1}}', value);

		return str;
	}

	// More optimized for file loading
	inline public static function getFileTranslation(key:String)
	{
		return key;
	}
}