package org.robotlegs.utilities.flexiblelogger.services {
	
	import org.robotlegs.mvcs.Actor;
	import org.robotlegs.utilities.flexiblelogger.controller.LoggingEvent;
	import org.robotlegs.utilities.flexiblelogger.services.ILoggingService;
	
	public class BaseLoggingService extends Actor implements ILoggingService {
		
		protected var logEventsVector:Vector.<LoggingEvent>;
		
		
		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		/**
		 * No comment. 
		 * 
		 */
		public function BaseLoggingService()  
		{
			super();
			logEventsVector = new Vector.<LoggingEvent>();
		}
		
		//--------------------------------------------------------------------------
		//
		//  API
		//
		//--------------------------------------------------------------------------
		
		public function logEvent(loggingEvent:LoggingEvent):void{
			logEventsVector[logEventsVector.length] = loggingEvent;
		}
		
		public function dumpLogEvents():Vector.<LoggingEvent>{
			return logEventsVector;
		}
		
		public function dumpLogString():String{
		    var logString:String = logEventsVector.join("\r");
			return logString;
		}
	}
}
