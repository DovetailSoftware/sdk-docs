### UpdateDepotRepairMaterial(Int32,RepairPartDisposition) Method

The objid of the material log object to be updated

Indicates how the material relates to the depot repair part.

Update a Depot Repair Material. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function UpdateDepotRepairMaterial( _
   ByVal _materialLogObjid_ As Integer, _
   ByVal _disposition_ As RepairPartDisposition _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateDepotRepairMaterial( 
   int _materialLogObjid_,
   RepairPartDisposition _disposition_
)
```

#### Parameters

_materialLogObjid_

The objid of the material log object to be updated

_disposition_

Indicates how the material relates to the depot repair part.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the MaterialLog.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~UpdateDepotRepairMaterial.md)