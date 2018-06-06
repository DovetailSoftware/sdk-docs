# Logging Config File Samples

## combo2_log.config

This example shows how to log to multiple appenders:

* Log everything to a rolling log file
* For one particular user, log to a different rolling log file

### Sample Configuration:  

```
<log4net>
  <appender name="RollingFileAppenderUser" type="log4net.Appender.RollingFileAppender" >
    <param name="File" value="C:\TEMP\fcflnet_user.log" />
    <param name="AppendToFile" value="true" />
    <param name="RollingStyle" value="Size" />
    <param name="MaxSizeRollBackups" value="100" />
    <param name="MaximumFileSize" value="1024KB" />
    <param name="StaticLogFileName" value="true" />
    
    <layout type="log4net.Layout.PatternLayout">
      <param name="ConversionPattern" value="%d [user: %X{user}] [fcsessionid: %X{session}] [%-5p] [%c]%n	%m%n%n" />
    </layout>
    
    <!-- Only show entries for a particular user -->
    <filter type="log4net.Filter.MDCFilter">
      <param name="StringToMatch" value="user_name_goes_here"/>
      <param name="Key" value="user"/>
    </filter>

    <filter type="log4net.Filter.DenyAllFilter" />
  </appender>
  
  <appender name="RollingFileAppender" type="log4net.Appender.RollingFileAppender" >
    <param name="File" value="C:\TEMP\fcflnet.log" />
    <param name="AppendToFile" value="true" />
    <param name="RollingStyle" value="Size" />
    <param name="MaxSizeRollBackups" value="100" />
    <param name="MaximumFileSize" value="1024KB" />
    <param name="StaticLogFileName" value="true" />
    
    <layout type="log4net.Layout.PatternLayout">
      <param name="ConversionPattern" value="%d [user: %X{user}] [fcsessionid: %X{session}] [%-5p] [%c]%n	%m%n%n" />
    </layout>
  </appender>
  
  <root>
    <level value="all" />			
    <appender-ref ref="RollingFileAppender" />
    <appender-ref ref="RollingFileAppenderUser" />
  </root>
</log4net>
```

---

### log4net Reference

Please visit the [Apache Logging Services: log4net Homepage](http://logging.apache.org/log4net/index.html) for documentation on log4net. The most important links are the [Manual](http://logging.apache.org/log4net/release/manual/introduction.html), the [FAQ](http://logging.apache.org/log4net/release/faq.html), and the [Configuration Examples](http://logging.apache.org/log4net/release/config-examples.html).
