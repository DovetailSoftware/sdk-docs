     InstanceName Property (PerfManager)                                                   

InstanceName Property (PerfManager)

Gets the instance name for this application as it will appear in the PerfMon utility

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property InstanceName As String

public string InstanceName {get;}

#### Property Value

The instance name for this application as it will appear in the PerfMon utility.

Remarks

This value can be set in the application configuration by specifying the "fchoice.perfmoninstancename" _appSetting_, or by specifying a value in the configuration programmatically using [ConfigValues.PERF_INSTANCE_NAME](FChoice.Common~FChoice.Common.ConfigValues~PERF_INSTANCE_NAME.md) constant as the key name.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[PerfManager Class](FChoice.Common~FChoice.Common.PerfManager.md)  
[PerfManager Members](FChoice.Common~FChoice.Common.PerfManager_members.md)