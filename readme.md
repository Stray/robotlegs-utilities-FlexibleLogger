**Under construction**

Don't use quite yet, still refactoring tests having extracted this from a project - should be final within 24 hours

**Flexible Logging for robotlegs**

A simple event-driven logging util, with a selection of loggers: 

**BaseLoggingService** simply stores the log, so you can do your own thing with the data later.

**TextfieldLoggingService** logs to a textfield on the stage.

**TraceLoggingService** traces out log events as they arrive.

**EmailLoggingService** creates an email of the log, when a log event of the right level is received.


**Adding it to your project**

Handy bootstrap commands are included - simply wire the appropriate bootstrap to your context.STARTUP event:

	commandMap.mapEvent(ContextEvent.STARTUP, BootstrapBaseLogger, ContextEvent, true);      
	
There are 5 different bootstraps provided:

**BootstrapBaseLogger** requires no special attention

**BootstrapTraceLogger** requires no special attention

**BootstrapTextFieldLogger** is currently wired to create an instance of HideableLogTextView - edit this bootstrap command to target (and create if needed) any textfield.

**BootstrapEmailLogger** is configurable - change the properties of the instance of EmailLoggerConfig - or roll your own implementation of IEmailLoggerConfig

**BootstrapLoggerByConfig** allows you to use a compiler variable - CONFIG::Logger - to control which implementation of the logging service is compiled. This has the same configuration options as the Email and TextField bootstraps.
	

**To log something...**

Logging is via events - so simply create the event and dispatch it on the robotlegs dispatcher:

	new LoggingEvent( LoggingEvent.LOG_EVENT , message, LoggingEvent.LEVEL_DEBUG , senderObject );
	  
Ready baked levels are:

	LEVEL_DEBUG
    LEVEL_WARNING
    LEVEL_ERROR
    LEVEL_INFO 
    LEVEL_FATAL  

The levels aren't hard referenced anywhere, so just add your own if these don't suit.

**Dependencies**

robotlegs v1.0 +

gs.TweenLite for the HideableLogTextView transitions - would be very simple to switch out for a different tweening option.