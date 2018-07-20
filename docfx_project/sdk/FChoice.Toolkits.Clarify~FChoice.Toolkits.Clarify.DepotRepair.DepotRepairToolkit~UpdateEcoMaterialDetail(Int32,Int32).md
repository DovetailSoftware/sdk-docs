### UpdateEcoMaterialDetail(Int32,Int32) Method

The objid of the ECO detail object to be updated

The objid of the part revision of the material that was put in use.

Update an ECO Material Detail. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
Public Overloads Function UpdateEcoMaterialDetail( _
   ByVal _ecoDetailObjid_ As Integer, _
   ByVal _partRevisionObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateEcoMaterialDetail( 
   int _ecoDetailObjid_,
   int _partRevisionObjid_
)
```

#### Parameters

_ecoDetailObjid_

The objid of the ECO detail object to be updated

_partRevisionObjid_

The objid of the part revision of the material that was put in use.

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~UpdateEcoMaterialDetail.md)