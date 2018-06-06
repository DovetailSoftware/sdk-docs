# Logging Config File Samples

## mssql_database_log.config

This will log all information to a custom Microsoft SQL Server database table. It uses the [ADONetAppender](http://logging.apache.org/log4net/release/sdk/html/T_log4net_Appender_RollingFileAppender.htm) Appender. It will log **all** information to the **Log** table. The events are written in batches of **100** (BufferSize). You should set the following parameters in the ConnectionString parameter:

* database server
* database name
* user
* password

Keep in mind that this is a direct database connection - it does not use the Application (Clarify or fcCRM) encrypted password. 

You will need to first create this custom database table - refer to the [ADONetAppender](http://logging.apache.org/log4net/release/sdk/html/T_log4net_Appender_RollingFileAppender.htm) Appender documentation for the database table definition.

### Sample Configuration:  

```
<log4net>
  <appender name="ADONetAppender" type="log4net.Appender.ADONetAppender">
    <param name="BufferSize" value="100" />
    <param name="ConnectionType" value="System.Data.SqlClient.SqlConnection, System.Data, Version=1.0.3300.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" />
    <param name="ConnectionString" value="data source=[database server];initial catalog=[database name];integrated security=false;persist security info=True;User ID=[user];Password=[password]" />
    
    <param name="CommandText" value="INSERT INTO Log ([Date],[Thread],[Level],[Logger],[Message],[Exception]) VALUES (@log_date, @thread, @log_level, @logger, @message, @exception)" />
    <param name="Parameter">
      <param name="ParameterName" value="@log_date" />
      <param name="DbType" value="DateTime" />
      <param name="Layout" type="log4net.Layout.RawTimeStampLayout" />
    </param>
    <param name="Parameter">
      <param name="ParameterName" value="@thread" />
      <param name="DbType" value="String" />
      <param name="Size" value="255" />
      <param name="Layout" type="log4net.Layout.PatternLayout">
        <param name="ConversionPattern" value="%t" />
      </param>
    </param>
    <param name="Parameter">
      <param name="ParameterName" value="@log_level" />
      <param name="DbType" value="String" />
      <param name="Size" value="50" />
      <param name="Layout" type="log4net.Layout.PatternLayout">
        <param name="ConversionPattern" value="%p" />
      </param>
    </param>
    <param name="Parameter">
      <param name="ParameterName" value="@logger" />
      <param name="DbType" value="String" />
      <param name="Size" value="255" />
      <param name="Layout" type="log4net.Layout.PatternLayout">
        <param name="ConversionPattern" value="%c" />
      </param>
    </param>
    <param name="Parameter">
      <param name="ParameterName" value="@message" />
      <param name="DbType" value="String" />
      <param name="Size" value="4000" />
      <param name="Layout" type="log4net.Layout.PatternLayout">
        <param name="ConversionPattern" value="%m" />
      </param>
    </param>
    <param name="Parameter">
      <param name="ParameterName" value="@exception" />
      <param name="DbType" value="String" />
      <param name="Size" value="2000" />
      <param name="Layout" type="log4net.Layout.ExceptionLayout" />
    </param>
  </appender>
     
  <root>
    <level value="all" />    
    <appender-ref ref="ADONetAppender" />
  </root>
</log4net>
```

---

### log4net Reference

Please visit the [Apache Logging Services: log4net Homepage](http://logging.apache.org/log4net/index.html) for documentation on log4net. The most important links are the [Manual](http://logging.apache.org/log4net/release/manual/introduction.html), the [FAQ](http://logging.apache.org/log4net/release/faq.html), and the [Configuration Examples](http://logging.apache.org/log4net/release/config-examples.html).

