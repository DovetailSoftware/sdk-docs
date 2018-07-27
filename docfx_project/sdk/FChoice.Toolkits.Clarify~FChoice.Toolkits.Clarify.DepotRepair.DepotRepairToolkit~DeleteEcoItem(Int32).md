### DeleteEcoItem(Int32) Method

The objid of the ECO item object to be deleted

Delete an ECO Item. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Function DeleteEcoItem( _
   ByVal _ecoItemObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult DeleteEcoItem( 
   int _ecoItemObjid_
)
```

#### Parameters

_ecoItemObjid_

The objid of the ECO item object to be deleted

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~DeleteEcoItem.md)