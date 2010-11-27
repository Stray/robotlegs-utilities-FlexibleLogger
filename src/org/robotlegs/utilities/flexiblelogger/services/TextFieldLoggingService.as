package org.robotlegs.utilities.flexiblelogger.services {
	
	import org.robotlegs.utilities.flexiblelogger.restricted.services.BaseLoggingService;
	import org.robotlegs.utilities.flexiblelogger.controller.LoggingEvent;
	import flash.text.TextField;
	
	public class TextFieldLoggingService extends BaseLoggingService {
		
		[Inject(name='logTextField')]
		public var logTextField:TextField;
		
		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		/**
		 * No comment. 
		 * 
		 */
		public function TextFieldLoggingService() 
		{
			super();
		}
		
		//--------------------------------------------------------------------------
		//
		//  API
		//
		//--------------------------------------------------------------------------
		
		override public function logEvent(loggingEvent:LoggingEvent):void{
			logTextField.appendText(loggingEvent.toString() + "\r ");
			super.logEvent(loggingEvent);
		}
	}
}
