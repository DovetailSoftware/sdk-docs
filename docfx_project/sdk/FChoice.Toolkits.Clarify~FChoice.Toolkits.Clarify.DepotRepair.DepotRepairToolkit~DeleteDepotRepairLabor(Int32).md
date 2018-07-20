### DeleteDepotRepairLabor(Int32) Method

The objid of the time log object to be deleted

Delete a Depot Repair Part. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
Public Overloads Function DeleteDepotRepairLabor( _
   ByVal _timeLogObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult DeleteDepotRepairLabor( 
   int _timeLogObjid_
)
```

#### Parameters

_timeLogObjid_

The objid of the time log object to be deleted

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~DeleteDepotRepairLabor.md)