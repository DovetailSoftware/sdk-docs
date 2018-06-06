# Logging Config File Samples

## combo1_log.config

This example shows how to log to multiple appenders:

* Log everything to a rolling log file
* Log errors to the Windows Event Log
* Send errors to an administrator via email

### Sample Configuration:  

```
<log4net>
  <appender name="RollingFileAppender" type="log4net.Appender.RollingFileAppender" >
    <param name="File" value="C:\TEMP\fcfl.net.compat\fcflnet.log" />
    <param name="AppendToFile" value="true" />
    <param name="RollingStyle" value="Size" />
    <param name="MaxSizeRollBackups" value="100" />
    <param name="MaximumFileSize" value="1024KB" />
    <param name="StaticLogFileName" value="true" />
        
    <layout type="log4net.Layout.PatternLayout">
      <param name="ConversionPattern" value="%d [user: %X{user}] [fcsessionid: %X{session}] [%-5p] [%c]%n  %m%n%n" />
    </layout>
     
  </appender>
  
  <appender name="EventLogAppender" type="log4net.Appender.EventLogAppender" >
    <param name="ApplicationName" value="Dovetail Software" />
    <param name="Threshold" value="error"/>

    <layout type="log4net.Layout.PatternLayout">
      <param name="ConversionPattern" value="%d [user: %X{user}] [fcsessionid: %X{session}] [%-5p] [%c]%n  %m%n%n" />
    </layout>
  </appender>
  
  <appender name="SMTPAppender" type="log4net.Appender.SMTPAppender">
    <param name="To" value="someone@company.com" />
    <param name="From" value="someone@company.com" />
    <param name="Subject" value="Message from First Choice Log Manager" />
    <param name="SMTPHost" value="smtp_server_name" />
    <param name="LocationInfo" value="false" />
    <param name="BufferSize" value="1" />
    <param name="Lossy" value="true" />

    <!-- only email out errors -->
    <evaluator type="log4net.spi.LevelEvaluator">
      <param name="Threshold" value="error"/>
    </evaluator>

    <layout type="log4net.Layout.PatternLayout">
      <param name="ConversionPattern" value="%d [user: %X{user}] [fcsessionid: %X{session}] [%-5p] [%c]%n  %m%n%n" />
    </layout>
  </appender>
  
  <root>
    <level value="all" />    
    <appender-ref ref="RollingFileAppender" />
    <appender-ref ref="EventLogAppender" />
    <appender-ref ref="SMTPAppender" />
  </root>
</log4net>
```

---

### log4net Reference

Please visit the [Apache Logging Services: log4net Homepage](http://logging.apache.org/log4net/index.html) for documentation on log4net. The most important links are the [Manual](http://logging.apache.org/log4net/release/manual/introduction.html), the [FAQ](http://logging.apache.org/log4net/release/faq.html), and the [Configuration Examples](http://logging.apache.org/log4net/release/config-examples.html).
