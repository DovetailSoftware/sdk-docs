### SetRootLoggerLevel Method

The level at which the root should start logging.

Changes the root's logging level (affecting all loggers)

Syntax

```vbnet
'Declaration

Public Shared Sub SetRootLoggerLevel( _
   ByVal _level_ As LogLevel _
) 
```

```csharp
public static void SetRootLoggerLevel( 
   LogLevel _level_
)
```

#### Parameters

_level_

The level at which the root should start logging.

Remarks

**NOTE:** After you are finished configuring LogManager, you must call [Reconfigure](FChoice.Common~FChoice.Common.LogManager~Reconfigure.md) in order for the changes to fully take effect.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)