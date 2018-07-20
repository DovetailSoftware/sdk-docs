### AddAppenderToRoot Method

The name of an existing appender to associate with this logger.

Adds an already-prepared appender to the root level (affecting all loggers).

Syntax

```vbnet
' Declaration

Public Shared Sub AddAppenderToRoot( _
   ByVal _appenderName_ As String _
) 

public static void AddAppenderToRoot( 
   string _appenderName_
)

#### Parameters

_appenderName_

The name of an existing appender to associate with this logger.

Remarks

This will not clear out any existing appenders that may be configured for the root, it will merely add it to the list. The only way to clear the appenders for a logger (including the root) is to call [ResetConfiguration](FChoice.Common~FChoice.Common.LogManager~ResetConfiguration.md) and reconfigure all the loggers again.   

To prepare a rolling file-based appender, see the [AddLogFileAppender](FChoice.Common~FChoice.Common.LogManager~AddLogFileAppender.md) method.

**NOTE:** After you are finished configuring LogManager, you must call [Reconfigure](FChoice.Common~FChoice.Common.LogManager~Reconfigure.md) in order for the changes to fully take effect.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)