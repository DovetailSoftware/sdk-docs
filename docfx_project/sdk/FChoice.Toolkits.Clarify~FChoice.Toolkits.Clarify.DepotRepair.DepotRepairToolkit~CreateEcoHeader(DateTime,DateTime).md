### CreateEcoHeader(DateTime,DateTime) Method

The DateTime the ECO header goes into effect. If not set, the current time is used.

The DateTime the ECO header becomes obsolete. If not set, the current time is used.

Create an Engineering Change Order (ECO) Header. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateEcoHeader( _
   ByVal _startDate_ As Date, _
   ByVal _endDate_ As Date _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateEcoHeader( 
   DateTime _startDate_,
   DateTime _endDate_
)
```

#### Parameters

_startDate_

The DateTime the ECO header goes into effect. If not set, the current time is used.

_endDate_

The DateTime the ECO header becomes obsolete. If not set, the current time is used.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateEcoHeader.md)