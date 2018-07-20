### SetLoggerLevel(String,LogLevel) Method

The name of the logger whose level is to be set.

The level at which the logger should start logging.

Changes a specific logger's (specified by name) logging level.

Syntax

```vbnet
' Declaration

Public Overloads Shared Sub SetLoggerLevel( _
   ByVal _loggerName_ As String, _
   ByVal _level_ As [LogLevel](/sdk/FChoice.Common~FChoice.Common.LogLevel.md) _
) 

public static void SetLoggerLevel( 
   string _loggerName_,
   [LogLevel](/sdk/FChoice.Common~FChoice.Common.LogLevel.md) _level_
)

#### Parameters

_loggerName_

The name of the logger whose level is to be set.

_level_

The level at which the logger should start logging.

Remarks

**NOTE:** After you are finished configuring LogManager, you must call [Reconfigure](FChoice.Common~FChoice.Common.LogManager~Reconfigure.md) in order for the changes to fully take effect.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)  
[Overload List](FChoice.Common~FChoice.Common.LogManager~SetLoggerLevel.md)