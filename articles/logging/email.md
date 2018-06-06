# Logging Config File Samples

## email_log.config

This configuration will send any errors statements to an administrator as an email (using SMTP). It uses the [SMTPAppender](http://logging.apache.org/log4net/release/sdk/html/T_log4net_Appender_SmtpAppender.htm) Appender. The **To**, **From**, **Subject** and **SMTPHost** are required parameters. A LevelEvaluator is specified with a threshold of ERROR. This means that an email will be sent for each ERROR or higher level message that is logged.

### Sample Configuration:  

```
<log4net>
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
      <param name="Threshold" value="ERROR"/>
    </evaluator>

    <layout type="log4net.Layout.PatternLayout">
      <param name="ConversionPattern" value="%d [user: %X{user}] [fcsessionid: %X{session}] [%-5p] [%c]%n	%m%n%n" />
    </layout>
  </appender>
  
  <root>
    <level value="info" />			
    <appender-ref ref="SMTPAppender" />
  </root>
</log4net>
```

---

### log4net Reference

Please visit the [Apache Logging Services: log4net Homepage](http://logging.apache.org/log4net/index.html) for documentation on log4net. The most important links are the [Manual](http://logging.apache.org/log4net/release/manual/introduction.html), the [FAQ](http://logging.apache.org/log4net/release/faq.html), and the [Configuration Examples](http://logging.apache.org/log4net/release/config-examples.html).
