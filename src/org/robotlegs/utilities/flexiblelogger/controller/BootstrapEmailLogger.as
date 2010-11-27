package utilities.flexiblelogger.controller
{

	import org.robotlegs.mvcs.Command;
	import org.robotlegs.utilities.flexiblelogger.controller.LoggingEvent;
	import org.robotlegs.utilities.flexiblelogger.controller.UpdateLogCommand;
	import org.robotlegs.utilities.flexiblelogger.services.EmailLoggingService;   
	import org.robotlegs.utilities.flexiblelogger.services.ILoggingService;

	public class BootstrapEmailLogger extends Command
	{
	
		public override function execute():void
		{
			commandMap.mapEvent(LoggingEvent.LOG_EVENT, UpdateLogCommand, LoggingEvent);
			
			var triggerLevels:Array = new Array();
			triggerLevels.push(LoggingEvent.LEVEL_FATAL);
			
			var emailConfig:IEmailLoggerConfig = new EmailLoggerConfig('example@address.com', 'some subject', triggerLevels, 'header text', 'footer text')
			
			injector.mapValue(IEmailLoggerConfig, emailConfig);
			
			injector.mapSingletonOf(ILoggingService, EmailLoggingService);
		}
	
	}

}