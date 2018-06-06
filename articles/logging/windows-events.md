# Logging Config File Samples

## eventlog_log.config

This configuration will log any errors to the Application event log on the local machine. It uses the [EventLogAppender](http://logging.apache.org/log4net/release/sdk/html/T_log4net_Appender_EventLogAppender.htm) Appender. The Threshold is set to ERROR. This means that an event will be logged for each ERROR or higher level message that is logged.

### Sample Configuration:  
```
<log4net>
   <appender name="EventLogAppender" type="log4net.Appender.EventLogAppender" >
      <param name="ApplicationName" value="Dovetail Software" />
      <param name="Threshold" value="error"/>

      <layout type="log4net.Layout.PatternLayout">
         <param name="ConversionPattern" value="%d [user: %X{user}] [fcsessionid: %X{session}] [%-5p] [%c]%n	%m%n%n" />
      </layout>
   </appender>
   
   <root>
      <level value="all" />			
      <appender-ref ref="EventLogAppender" />
   </root>
</log4net>
```
      
### Setting up the event source:

If you are not getting events delivered to the event log this usually indicates a permissions problem. Basically if the event log does not exist the EventLogAppender tries to create it, but you need local administrator permissions to create event logs (just to write into the right bit of the registry). You don't need administrator permissions to log to an existing event log, but it must exist. If you are using the event log from a web application or service using the event log can be a little tricky.

A web application will run as the user account ASPNET. This account deliberately has few permissions to reduce the chances of someone hacking into the web server. While the account has permission to write to the event log it does not have permission to create event sources (registry create and write access), which are needed to write to the event log.

**fcSDK** ships with a sample script that will create the Event Source for you.

* Log into Windows as an administrator
* Edit the *fc.env* file in the */samples/logging/setup_event_source* directory
* Run the *setup_event_source* bat file

Then look in the Application Log of the Windows Event Viewer, and you should see a new error logged there. 

Now that the event source has been created, web applications will be able to write to the Event Log.

---

### log4net Reference

Please visit the [Apache Logging Services: log4net Homepage](http://logging.apache.org/log4net/index.html) for documentation on log4net. The most important links are the [Manual](http://logging.apache.org/log4net/release/manual/introduction.html), the [FAQ](http://logging.apache.org/log4net/release/faq.html), and the [Configuration Examples](http://logging.apache.org/log4net/release/config-examples.html).
