package org.robotlegs.utilities.flexiblelogger.services
{
	import org.robotlegs.utilities.flexiblelogger.services.BaseLoggingService;
	import org.robotlegs.utilities.flexiblelogger.controller.LoggingEvent;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import org.robotlegs.utilities.flexiblelogger.services.IEmailLoggerConfig;

	public class EmailLoggingService extends BaseLoggingService {   
		
		[Inject]
		public var emailConfig:IEmailLoggerConfig;
		
		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------

		public function EmailLoggingService() 
		{
			super();
		}
		
		//--------------------------------------------------------------------------
		//
		//  API
		//
		//--------------------------------------------------------------------------
		
		override public function logEvent(loggingEvent:LoggingEvent):void{
			super.logEvent(loggingEvent);
			
			if(emailConfig.triggerLevels.indexOf(loggingEvent.level) > -1)
			{
				emailLogString();
			}
		}
		
		public function emailLogString():void {
			
			emailUrl:String = 'mailto:' + emailConfig.to
							+ '?subject=' + emailConfig.subject
							+ '&body=' + emailConfig.headerText
							+ escape(dumpLogString())
							+ emailConfig.footerText;
 			
			var urlRequest:URLRequest = new URLRequest(emailUrl);
			
			navigateToURL(urlRequest);
		}
		
	}

}