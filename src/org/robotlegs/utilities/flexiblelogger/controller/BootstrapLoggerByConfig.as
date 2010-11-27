package org.robotlegs.utilities.flexiblelogger.controller
{
    
	import org.robotlegs.mvcs.Command;
	import org.robotlegs.utilities.flexiblelogger.controller.LoggingEvent;    
	import org.robotlegs.utilities.flexiblelogger.services.EmailLoggerConfig;
	import org.robotlegs.utilities.flexiblelogger.services.EmailLoggingService;
	import org.robotlegs.utilities.flexiblelogger.services.IEmailLoggerConfig;
	import org.robotlegs.utilities.flexiblelogger.services.ILoggingService;
	import org.robotlegs.utilities.flexiblelogger.services.TextFieldLoggingService; 
	import org.robotlegs.utilities.flexiblelogger.services.TraceLoggingService;
	import org.robotlegs.utilities.flexiblelogger.view.HideableLogTextView;



	public class BootstrapLoggerByConfig extends Command
	{
	
		public override function execute():void
		{
			commandMap.mapEvent(LoggingEvent.LOG_EVENT, UpdateLogCommand, LoggingEvent);
			
			if(CONFIG::Logger == 'TraceLogger')
			{
				injector.mapSingletonOf(ILoggingService, TraceLoggingService);
			}
			else if(CONFIG::Logger == 'EmailLogger')
			{
				var triggerLevels:Array = new Array();
				triggerLevels.push(LoggingEvent.LEVEL_FATAL);

				var emailConfig:IEmailLoggerConfig = new EmailLoggerConfig('example@address.com', 'some subject', triggerLevels, 'header text', 'footer text')
				
				injector.mapValue(IEmailLoggerConfig, emailConfig);
				
				injector.mapSingletonOf(ILoggingService, EmailLoggingService);
			}
			else if(CONFIG::Logger == 'TextfieldLogger')
			{
				var hideableLogTextView:HideableLogTextView = new HideableLogTextView();
				contextView.addChild(hideableLogTextView);
				var logTextField:TextField = hideableLogTextView.logTextField;
			    // you can map any textfield to this value
				injector.mapValue(TextField, logTextField, "logTextField");
				injector.mapSingletonOf(ILoggingService, TextFieldLoggingService); 
			}
			else
			{
				injector.mapSingletonOf(ILoggingService, BaseLoggingService);
			}
		}
	
	}

}