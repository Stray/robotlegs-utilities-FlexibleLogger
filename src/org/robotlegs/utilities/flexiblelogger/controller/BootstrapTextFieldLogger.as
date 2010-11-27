package org.robotlegs.utilities.flexiblelogger.controller
{
    
	import org.robotlegs.mvcs.Command;
	import org.robotlegs.utilities.flexiblelogger.services.ILoggingService;
	import org.robotlegs.utilities.flexiblelogger.services.TextFieldLoggingService;
	import org.robotlegs.utilities.flexiblelogger.view.HideableLogTextView;

	public class BootstrapTextFieldLogger extends Command
	{
	
		public override function execute():void
		{
			commandMap.mapEvent(LoggingEvent.LOG_EVENT, UpdateLogCommand, LoggingEvent);
			
			var hideableLogTextView:HideableLogTextView = new HideableLogTextView();
			contextView.addChild(hideableLogTextView);
			var logTextField:TextField = hideableLogTextView.logTextField;
			// you can map any textfield to this value
			injector.mapValue(TextField, logTextField, "logTextField");
			injector.mapSingletonOf(ILoggingService, TextFieldLoggingService); 
			
		}
	
	}

}

