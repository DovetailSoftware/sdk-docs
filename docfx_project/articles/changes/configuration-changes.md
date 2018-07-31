# Configuration Changes

## fc.env Configuration

Applications using FCFL have used an **fc.env** file to control database and logging configuration settings. Here is an example of a classic fc.env file:

```
;begin fc.env file...
db_type=Oracle
db_server=Clarify
db_name=Clarify
login_name=sa
db_password=sa
```

While the Compatibility Layer can still be configured using an fc.env file like the one above, in the compatibility layer you can use all of the **fcSDK** application [configuration settings](../basic-configuration.md) for better control of the application and database settings. For example, the following fc.env file effectively replaces the previous example and disables performance counters.

```
;begin fc.env file...
fchoice.dbtype=Oracle
fchoice.connectionstring=Data Source=Clarify;uid=sa;pwd=sa;
fchoice.perfcountersenabled=false
```

## Logging

Previously, FCFL employed a simple logging mechanism. The **fcSDK** uses a much more sophisticated logging mechanism with many more features, including:

* Different log levels: Debug, Info, Warning, Error, and Fatal
* Can log to: File, Database, Windows Event Log, Email, several other sources, or any combination of these
* Set maximum log file size, number of file rollovers, etc
* Configurable log output (date/time format, log source, etc)
* Dynamic configuration: Make changes on-the-fly, without re-starting your application

The Log Manager uses an XML Configuration file. The configuration is easily readable and updateable while retaining the flexibility to express all configurations. The **fcSDK** ships with several sample logging configuration files.

### Setting up Log Manager:

1. Copy one of the sample logging configuration files from your **fcSDK** installation directory to an appropriate working directory.
1. Edit the sample logging configuration file as appropriate for your needs.
		For example, if you are logging to a file, you'll probably want to set the File param of the RollingFileAppender entry to tell the Log Manager the path and filename of where you want your log file to be located.<br/><br/>Refer to the Logging Config File Samples documentation for more details on and examples of logging configuration files.
1. If your application uses an fc.env file, add a new entry to the fc.env file:
		*compat_logconfigfile* - The path and filename of a valid logging configuration file.<br/><br/>Example:<br/>
		```
		compat_logconfigfile=C:\fcClient\fcclient_logging.config
		``` 
		<br/>Note that the FCFL logging fc.env parameters are no longer used. It doesn't hurt to leave these entries in the fc.env file - they will be ignored by the **fcSDK**.<table><tr><th>fc.env logging entries not used by fcSDK</th></tr><tr><td>log_file</td></tr><tr><td>sql_log_file</td></tr><tr><td>sql_logging</td></tr><tr><td>log_fcapp</td></tr><tr><td>log_fcsession</td></tr><tr><td>log_fcgeneric</td></tr><tr><td>log_fcbulk</td></tr><tr><td>log_fcsqlexec</td></tr></td></table>
1. If your application uses FCApplication.InitializeFull rather than an fc.env file, simply set a new property on the FCFLCompat.FCApplication object:
		*LoggingConfigFilePath* - The path and filename of a valid logging configuration file<br/><br/>Example:<br/>
		```
		FCApplication.LoggingConfigFilePath = "C:\fcClient\log.config"
		FCApplication.InitializeFull(...)
		```
1. Restart your application.
		From here on, you can make changes to the logging configuration file, and these changes will automatically be picked up by the Log Manager - there's no need to restart your app just to make a logging configuration change.
