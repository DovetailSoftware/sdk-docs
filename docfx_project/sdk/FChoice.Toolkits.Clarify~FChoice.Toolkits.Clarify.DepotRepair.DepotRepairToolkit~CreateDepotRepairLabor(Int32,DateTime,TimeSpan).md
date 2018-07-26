### CreateDepotRepairLabor(Int32,DateTime,TimeSpan) Method

Objid of the related Part Request Detail

The DateTime the Labor began. If not set, the current time is used.

Length of time required to do the work, in seconds

Create a Depot Repair Labor to be performed on a Part. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateDepotRepairLabor( _
   ByVal _demandDetailObjid_ As Integer, _
   ByVal _startDate_ As Date, _
   ByVal _duration_ As TimeSpan _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateDepotRepairLabor( 
   int _demandDetailObjid_,
   DateTime _startDate_,
   TimeSpan _duration_
)
```

#### Parameters

_demandDetailObjid_

Objid of the related Part Request Detail

_startDate_

The DateTime the Labor began. If not set, the current time is used.

_duration_

Length of time required to do the work, in seconds

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the TimeLog.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateDepotRepairLabor.md)