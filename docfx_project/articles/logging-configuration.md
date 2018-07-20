
# Application Logging in the fcSDK

The fcSDK has a robust, comprehensive, and dynamic logging framework. This framework allows developers and administrators a high degree of flexibility to control the quality and detail of the information the fcSDK itself and any applications built upon the fcSDK generate.

The fcSDK uses a much more sophisticated and highly configurable logging mechanism with more features than previous First Choice products. Here is a sample of some of the features:

Different log levels: Debug, Info, Warning, Error, and Fatal
Can log to: File, Database, Windows Event Log, Email, several other sources, or any combination of these
Set maximum log file size, number of file rollovers, etc
Configurable log output (date/time format, log source, etc)
Dynamic configuration: Make changes on-the-fly, without re-starting your application
The Log Manager uses an XML Configuration file. The configuration is easily readable and updateable while retaining the flexibility to express all configurations. fcSDK ships with several sample logging configuration files.

Setting up Log Manager:
Copy one of the sample logging configuration files from your fcSDK installation directory to an appropriate working directory.
Edit the sample logging configuration file as appropriate for your needs.

For example, if you are logging to a file, you'll probably want to set the File param of the RollingFileAppender entry to tell the Log Manager the path and filename of where you want your log file to be located.

Refer to the [Logging Config File Samples](logging/logging-samples.md) documentation for more details on and examples of logging configuration files.

Tell LogManager which logging config file to use. This can be accomplished in one of two ways:

Set the fchoice.logconfigfile application setting in your application configuration (.config) file (see Configuring fcSDK for more information on configuring fcSDK).
Programmatically set the LogConfigFilePath property of LogManager before initializing ClarifyApplication
Restart your application

From here on, you can make changes to the logging configuration file, and these changes will automatically be picked up by the Log Manager - there's no need to restart your app just to make a logging configuration change.

### 

* [Logging Config File Samples](logging/logging-samples.md)
* [Configuring fcSDK](basic-configuration.md)
