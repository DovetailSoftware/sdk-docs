# Logging Config File Samples

## oracle_database_log.config

This will log all information to a custom Oracle database table. It uses the [ADONetAppender](http://logging.apache.org/log4net/release/sdk/html/T_log4net_Appender_AdoNetAppender.htm) Appender. It will log **all** information to the **Log** table. You should set the following parameters in the ConnectionString parameter:

* database
* user
* password

Keep in mind that this is a direct database connection - it does not use the Application (Clarify or fcCRM) encrypted password. 

You will need to first create this custom database table - refer to the [ADONetAppender](http://logging.apache.org/log4net/release/sdk/html/T_log4net_Appender_AdoNetAppender.htm) Appender documentation for the database table definition.

### Sample Configuration:  
```
<log4net>
	<appender name="ADONetAppender_Oracle" type="log4net.Appender.ADONetAppender">
		<param name="ConnectionType" value="System.Data.OracleClient.OracleConnection, System.Data.OracleClient, Version=1.0.3300.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" />
		<param name="ConnectionString" value="data source=[mydatabase];User ID=[user];Password=[password]" />
		<param name="CommandText" value="INSERT INTO Log (Datetime,Thread,Log_Level,Logger,Message) VALUES (:log_date, :thread, :log_level, :logger, :message)" />
		<param name="BufferSize" value="128" />
		<param name="Parameter">
		<param name="ParameterName" value=":log_date" />
		<param name="DbType" value="DateTime" />
		<param name="Layout" type="log4net.Layout.RawTimeStampLayout" />
		</param>
		<param name="Parameter">
		<param name="ParameterName" value=":thread" />
		<param name="DbType" value="String" />
		<param name="Size" value="255" />
		<param name="Layout" type="log4net.Layout.PatternLayout">
		 <param name="ConversionPattern" value="%t" />
		</param>
		</param>
		<param name="Parameter">
		<param name="ParameterName" value=":log_level" />
		<param name="DbType" value="String" />
		<param name="Size" value="50" />
		<param name="Layout" type="log4net.Layout.PatternLayout">
		 <param name="ConversionPattern" value="%p" />
		</param>
		</param>
		<param name="Parameter">
		<param name="ParameterName" value=":logger" />
		<param name="DbType" value="String" />
		<param name="Size" value="255" />
		<param name="Layout" type="log4net.Layout.PatternLayout">
		 <param name="ConversionPattern" value="%c" />
		</param>
		</param>
		<param name="Parameter">
		<param name="ParameterName" value=":message" />
		<param name="DbType" value="String" />
		<param name="Size" value="4000" />
		<param name="Layout" type="log4net.Layout.PatternLayout">
		 <param name="ConversionPattern" value="%m" />
		</param>
		</param>
	</appender>

	<root>
		<level value="all" />			
		<appender-ref ref="ADONetAppender_Oracle" />
	</root>
</log4net>
```

---

### log4net Reference

Please visit the [Apache Logging Services: log4net Homepage](http://logging.apache.org/log4net/index.html) for documentation on log4net. The most important links are the [Manual](http://logging.apache.org/log4net/release/manual/introduction.html), the [FAQ](http://logging.apache.org/log4net/release/faq.html), and the [Configuration Examples](http://logging.apache.org/log4net/release/config-examples.html).
