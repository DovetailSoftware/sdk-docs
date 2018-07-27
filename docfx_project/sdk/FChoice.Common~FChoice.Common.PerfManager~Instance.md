### Instance Property (PerfManager)

Retreives a reference to the singleton instance of PerfManager

#### Syntax

```vbnet
'Declaration

Public Shared ReadOnly Property Instance As PerfManager
```

```csharp
public static PerfManager Instance {get;}
```

#### Property Value

A reference to the singleton instance of PerfManager

#### Remarks

Most of the methods on PerfManager are instance methods and require a reference to a specific instance. There is only one singleton instance of PerfManager available. Use this property to retrieve a reference to it.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[PerfManager Class](FChoice.Common~FChoice.Common.PerfManager.md)  
[PerfManager Members](FChoice.Common~FChoice.Common.PerfManager_members.md)