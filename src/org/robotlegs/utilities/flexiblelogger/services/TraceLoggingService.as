package org.robotlegs.utilities.flexiblelogger.services {
	
	import org.robotlegs.utilities.flexiblelogger.services.BaseLoggingService;
	import org.robotlegs.utilities.flexiblelogger.controller.LoggingEvent;
	
	public class TraceLoggingService extends BaseLoggingService {
		
		
		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		/**
		 * No comment. 
		 * 
		 */
		public function TraceLoggingService() 
		{
			super();
		}
		
		//--------------------------------------------------------------------------
		//
		//  API
		//
		//--------------------------------------------------------------------------
		
		override public function logEvent(loggingEvent:LoggingEvent):void{
			trace(loggingEvent.toString());
			super.logEvent(loggingEvent);
		}
		
	}
}
