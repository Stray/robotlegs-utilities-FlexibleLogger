package org.robotlegs.utilities.flexiblelogger.controller
{
    
	import org.robotlegs.mvcs.Command;
	import org.robotlegs.utilities.flexiblelogger.controller.LoggingEvent;
	import org.robotlegs.utilities.flexiblelogger.controller.UpdateLogCommand;
	import org.robotlegs.utilities.flexiblelogger.services.ILoggingService;    
	import org.robotlegs.utilities.flexiblelogger.services.TraceLoggingService;  

	public class BootstrapTraceLogger extends Command
	{
	
		public override function execute():void
		{
			commandMap.mapEvent(LoggingEvent.LOG_EVENT, UpdateLogCommand, LoggingEvent);
			
			injector.mapSingletonOf(ILoggingService, TraceLoggingService);
			
		}
	
	}

}

