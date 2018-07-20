### AddAppenderToLogger(String,String) Method

The name of an existing appender to associate with this logger.

The name of the logger that is to start using the appender.

Links a given appender to the specified logger name.

Syntax

```vbnet
' Declaration

Public Overloads Shared Sub AddAppenderToLogger( _
   ByVal _appenderName_ As String, _
   ByVal _loggerName_ As String _
) 

public static void AddAppenderToLogger( 
   string _appenderName_,
   string _loggerName_
)

#### Parameters

_appenderName_

The name of an existing appender to associate with this logger.

_loggerName_

The name of the logger that is to start using the appender.

Remarks

This will not clear out any existing appenders that may be configured for that logger, it will merely add it to the list. The only way to clear the appenders for a logger is to call [ResetConfiguration](FChoice.Common~FChoice.Common.LogManager~ResetConfiguration.md) and reconfigure all the loggers again.

To prepare a rolling file-based appender, see the [AddLogFileAppender](FChoice.Common~FChoice.Common.LogManager~AddLogFileAppender.md) method.

**NOTE:** After you are finished configuring LogManager, you must call [Reconfigure](FChoice.Common~FChoice.Common.LogManager~Reconfigure.md) in order for the changes to fully take effect.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)  
[Overload List](FChoice.Common~FChoice.Common.LogManager~AddAppenderToLogger.md)