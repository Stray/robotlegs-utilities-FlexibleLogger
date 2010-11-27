/* AS3
	Copyright 2009 Newloop.
*/
package org.robotlegs.utilities.flexiblelogger.services {
	
	import org.robotlegs.utilities.flexiblelogger.controller.LoggingEvent;
	
	/**
	 *	Description
	 *
	 *	@langversion ActionScript 3.0
	 *	@playerversion Flash 9.0
	 *
	 *	@author Lindsey Fallow
	 *	@since  06.12.2009
	 */
	public interface ILoggingService {
		
		//--------------------------------------
		//  PUBLIC METHODS
		//--------------------------------------
		
		function logEvent(loggingEvent:LoggingEvent):void;
		
		function dumpLogEvents():Vector.<LoggingEvent>;
		
		function dumpLogString():String;
		
		//--------------------------------------
		//  GETTER/SETTERS
		//--------------------------------------
		
	}
	
}
