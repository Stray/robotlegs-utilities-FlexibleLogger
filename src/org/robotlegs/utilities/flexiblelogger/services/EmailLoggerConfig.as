package utilities.flexiblelogger.services
{

	public class EmailLoggerConfig extends Object implements IEmailLoggerConfig
	{
	
		public function EmailLoggerConfig(to:String, subject:String, triggerLevels:Array, headerText:String='', footerText:String='')
		{
		
		}
	    
		protected var _to:String;

		public function get to():String
		{
			return _to;
		}
		
		protected var _subject:String;

		public function get subject():String
		{
			return _subject;
		} 
	
		protected var _headerText:String;

		public function get headerText():String
		{
			return _headerText;
		}                        
	
		protected var _footerText:String;

		public function get footerText():String
		{
			return _footerText;
		}
	    
		protected var _triggerLevels:Array;

		public function get triggerLevels():Array
		{
			return _triggerLevels;
		}
		
	
	
	} 

}

