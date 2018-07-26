### ResetConfiguration Method

Resets the log configuration and configuration file back to defaults (root level set to INFO with no appenders).

Syntax

```vbnet
'Declaration

Public Shared Sub ResetConfiguration() 
```

```csharp
public static void ResetConfiguration()
```

#### Remarks

**WARNING:** Call this only if you're sure you wish to lose all logging configuration and reset back to nothing.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)