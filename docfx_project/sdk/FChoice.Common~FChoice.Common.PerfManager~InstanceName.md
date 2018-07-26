### InstanceName Property (PerfManager)

Gets the instance name for this application as it will appear in the PerfMon utility

Syntax

```vbnet
'Declaration

Public ReadOnly Property InstanceName As String
```

```csharp
public string InstanceName {get;}
```

#### Property Value

The instance name for this application as it will appear in the PerfMon utility.

Remarks

This value can be set in the application configuration by specifying the "fchoice.perfmoninstancename" _appSetting_, or by specifying a value in the configuration programmatically using [ConfigValues.PERF_INSTANCE_NAME](FChoice.Common~FChoice.Common.ConfigValues~PERF_INSTANCE_NAME.md) constant as the key name.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[PerfManager Class](FChoice.Common~FChoice.Common.PerfManager.md)  
[PerfManager Members](FChoice.Common~FChoice.Common.PerfManager_members.md)