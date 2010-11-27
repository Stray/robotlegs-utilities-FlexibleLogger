package utilities.flexiblelogger.services
{

public interface IEmailLoggerConfig
{

	function get to():String;
	
	function get subject():String;
	
	function get headerText():String;
	
	function get footerText():String;
	
	function get triggerLevels():Array;
	
}

}

