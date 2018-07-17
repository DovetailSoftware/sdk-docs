### LogEx(FCSession)

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Sub LogEx(logLevel as String, logMessage As String)

**Description**

Alternate logging method that allows setting the log level. This method is similar to [Logger.Log](/sdk/FChoice.Common~FChoice.Common.Logger~Log.md) except that the log level is a string representation of the [LogLevel](/sdk/FChoice.Common~FChoice.Common.LogLevel.md) enumeration (e.g "DEBUG", "INFO", "ERROR").

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

logLevel                               Yes                         A string representation of the [LogLevel](/sdk/FChoice.Common~FChoice.Common.LogLevel.md) enumeration (e.g "DEBUG", "INFO", "ERROR").

logMessage                         Yes                        The message to be logged.

**Example**

The following example logs a DEBUG message to the log file.

**Visual Basic:**

The code in this example is written in Visual Basic

fc_app.LogEx "DEBUG", "This is a test debug message"

**JavaScript:**

The code in this example is written in JavaScript.

fc_app.LogEx("DEBUG", "This is a test debug message");

Here is an example of what the entry will look like in the log file:

2004-11-15 14:21:31,469 \[DEBUG\] This is a test debug message.

Note, the log output can be easily modified by changing your [Logging Configuration](/articles/logging/logging_samples.md)