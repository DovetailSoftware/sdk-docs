# Logging Config File Samples

## largesql_log.config

This configuration will log all SQL queries which meet or exceed the "Large Query" thresholds set in the configuration. For more information on how to define what constitutes a "Large Query", please see the [Basic Configuration](basic-configuration.md) documentation. This sample uses the [RollingFileAppender](http://logging.apache.org/log4net/release/sdk/html/T_log4net_Appender_RollingFileAppender.htm) Appender. It will log **only** information related to large queries to the file *c:\temp\logs\fcflnet.log*. The file written to will always be called fcflnet.log because the StaticLogFileName param is set to **true**. The file will be rolled based on a **size** constraint (RollingStyle). Up to **100** (MaxSizeRollBackups) old files of **1024 KB** each (MaximumFileSize) will be kept. These rolled files will be named: fcflnet.log.1, fcflnet.log.2, fcflnet.log.3, etc... 

The format of the output will be:
```
<timestamp> [user: <user_name>] [fcsessionid: <fcsession id>] [<level>] [<class file where error originated from>] <newline> 
<tab><message><newline><newline>
```

### Example Output
```
2004-11-15 14:21:31,469 [user: joe] [fcsessionid: 1636fbda-6bbf-463d-afcc-d24a8f113da6] [INFO ] [FChoice.Common.Data.SqlHelper]
	Fill DataSet query (e592af81-14fb-48b3-ae19-0ae77b4ca457) took 0.0022 seconds.
```

### Sample Configuration
```
<log4net>
   <appender name="RollingFileAppender" type="log4net.Appender.RollingFileAppender" >
      <param name="File" value="C:\TEMP\logs\fcflnet.log" />
      <param name="AppendToFile" value="true" />
      <param name="RollingStyle" value="Size" />
      <param name="MaxSizeRollBackups" value="100" />
      <param name="MaximumFileSize" value="1024KB" />
      <param name="StaticLogFileName" value="true" />
      
      <layout type="log4net.Layout.PatternLayout">
         <param name="ConversionPattern" value="%d [user: %X{user}] [fcsessionid: %X{session}] [%-5p] [%c]%n	%m%n%n" />
      </layout>
      
      <!-- Only large query information -->
      <filter type="log4net.Filter.StringMatchFilter">
         <param name="StringToMatch" value="Large Query: True"/>
      </filter>
      <filter type="log4net.Filter.DenyAllFilter" />
   
   </appender>

   <root>
      <level value="INFO" />			
      <appender-ref ref="RollingFileAppender" />
   </root>
</log4net>
```
