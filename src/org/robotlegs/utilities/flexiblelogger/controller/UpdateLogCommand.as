package org.robotlegs.utilities.flexiblelogger.restricted.controller {
	
	import org.robotlegs.mvcs.Command;
	
	import org.robotlegs.utilities.flexiblelogger.restricted.services.ILoggingService;
	import org.robotlegs.utilities.flexiblelogger.controller.LoggingEvent;
	
	public class UpdateLogCommand extends Command{
		
		[Inject]
		public var loggingService:ILoggingService;
		
		[Inject]
		public var loggingEvent:LoggingEvent;
		
		public function UpdateLogCommand() {
		}
		
		override public function execute():void {
			// do stuff here
			loggingService.logEvent(loggingEvent);
		} 
	}
}
