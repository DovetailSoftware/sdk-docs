### Initialize Method (PerfManager)

Allows PerfManager to initialize itself by creating a new PerfMon instance name and preparing all the PerformanceCounter instances

Syntax

```vbnet
'Declaration

Public Shared Sub Initialize() 
```

```csharp
public static void Initialize()
```

#### Remarks

This method retrieves configuration from the [FCConfiguration Class](FChoice.Common~FChoice.Common.FCConfiguration.md). The application should ensure that the proper configuration has been loaded (either via configuration file, or through supplied programmatic values) before calling this method.

Performance counter events that fire before PerfManager is initialized will be discarded and no error will be thrown.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[PerfManager Class](FChoice.Common~FChoice.Common.PerfManager.md)  
[PerfManager Members](FChoice.Common~FChoice.Common.PerfManager_members.md)