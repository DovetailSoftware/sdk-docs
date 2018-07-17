### SetRootLoggerLevel Method

The level at which the root should start logging.

Changes the root's logging level (affecting all loggers)

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared Sub SetRootLoggerLevel( _
   ByVal _level_ As [LogLevel](/sdk/FChoice.Common~FChoice.Common.LogLevel.md) _
) 

public static void SetRootLoggerLevel( 
   [LogLevel](/sdk/FChoice.Common~FChoice.Common.LogLevel.md) _level_
)

#### Parameters

_level_

The level at which the root should start logging.

Remarks

**NOTE:** After you are finished configuring LogManager, you must call [Reconfigure](FChoice.Common~FChoice.Common.LogManager~Reconfigure.md) in order for the changes to fully take effect.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)