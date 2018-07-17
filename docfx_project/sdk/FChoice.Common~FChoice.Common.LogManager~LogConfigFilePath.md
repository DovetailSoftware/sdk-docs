     LogConfigFilePath Property                                                   

LogConfigFilePath Property

Gets or sets the full path to the file LogManager should attempt to use to configure itself.

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared Property LogConfigFilePath As String

public static string LogConfigFilePath {get; set;}

#### Property Value

The full path to the file LogManager will use for configuration.

Remarks

Setting this value will not cause LogManager to reconfigure itself immediately. You must call [Reconfigure](FChoice.Common~FChoice.Common.LogManager~Reconfigure.md) in order for the changes to take effect.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)