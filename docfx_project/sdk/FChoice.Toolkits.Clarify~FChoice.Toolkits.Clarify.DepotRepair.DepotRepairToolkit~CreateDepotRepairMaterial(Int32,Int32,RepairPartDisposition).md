### CreateDepotRepairMaterial(Int32,Int32,RepairPartDisposition) Method

Objid of the related Part Request Detail

The objid of the part revision of the material that was put in use.

Indicates how the material relates to the depot repair part.

Create a Depot Repair Material to be logged against a Part. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateDepotRepairMaterial( _
   ByVal _demandDetailObjid_ As Integer, _
   ByVal _partRevisionObjid_ As Integer, _
   ByVal _disposition_ As RepairPartDisposition _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateDepotRepairMaterial( 
   int _demandDetailObjid_,
   int _partRevisionObjid_,
   RepairPartDisposition _disposition_
)
```

#### Parameters

_demandDetailObjid_

Objid of the related Part Request Detail

_partRevisionObjid_

The objid of the part revision of the material that was put in use.

_disposition_

Indicates how the material relates to the depot repair part.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the MaterialLog.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateDepotRepairMaterial.md)