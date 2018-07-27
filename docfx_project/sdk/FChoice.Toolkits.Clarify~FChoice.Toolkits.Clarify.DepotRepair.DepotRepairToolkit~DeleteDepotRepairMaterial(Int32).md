### DeleteDepotRepairMaterial(Int32) Method

The objid of the material log object to be deleted

Delete a Depot Repair Material. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Function DeleteDepotRepairMaterial( _
   ByVal _materialLogObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult DeleteDepotRepairMaterial( 
   int _materialLogObjid_
)
```

#### Parameters

_materialLogObjid_

The objid of the material log object to be deleted

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~DeleteDepotRepairMaterial.md)