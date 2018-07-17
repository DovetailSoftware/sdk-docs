     Current Property                                                   

Current Property

Gets or sets the current configuration settings or null if none are currently configured.

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared Property Current As NameValueCollection

public static NameValueCollection Current {get; set;}

#### Property Value

The current configuration settings.

Remarks

If none are loaded, call [LoadEnvironmentSettings](FChoice.Common~FChoice.Common.FCConfiguration~LoadEnvironmentSettings.md) to load values.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCConfiguration Class](FChoice.Common~FChoice.Common.FCConfiguration.md)  
[FCConfiguration Members](FChoice.Common~FChoice.Common.FCConfiguration_members.md)