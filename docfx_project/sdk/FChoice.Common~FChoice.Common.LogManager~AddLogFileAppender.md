     AddLogFileAppender Method                                                   

AddLogFileAppender Method

A unique name to use for this appender for reference later.

The full or relative path to the file to create or use for logging. If one exists, it will be appended to.

Creates a new rolling log file appender and adds it to the configuration for use elsewhere.

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared Sub AddLogFileAppender( _
   ByVal _appenderName_ As String, _
   ByVal _fileName_ As String _
) 

public static void AddLogFileAppender( 
   string _appenderName_,
   string _fileName_
)

#### Parameters

_appenderName_

A unique name to use for this appender for reference later.

_fileName_

The full or relative path to the file to create or use for logging. If one exists, it will be appended to.

Remarks

This will create an initialize the appender. Nothing will be written to the file until this appender is associated with the root logger or any loggers in the hierarchy. See the [AddAppenderToRoot](FChoice.Common~FChoice.Common.LogManager~AddAppenderToRoot.md) and [AddAppenderToLogger](FChoice.Common~FChoice.Common.LogManager~AddAppenderToLogger.md) methods for more information on how to do this association.

**NOTE:** After you are finished configuring LogManager, you must call [Reconfigure](FChoice.Common~FChoice.Common.LogManager~Reconfigure.md) in order for the changes to fully take effect.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)