### CreateEcoMaterialDetail(Boolean,String,Int32) Method

Indicates if this detail is required (true) or not (false)

Identifier of the ECO header

The objid of the part revision of the material that was put in use.

Add a Material Usage Detail to an ECO Header. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
Public Overloads Function CreateEcoMaterialDetail( _
   ByVal _isRequired_ As Boolean, _
   ByVal _ecoHeaderIDNum_ As String, _
   ByVal _partRevisionObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateEcoMaterialDetail( 
   bool _isRequired_,
   string _ecoHeaderIDNum_,
   int _partRevisionObjid_
)
```

#### Parameters

_isRequired_

Indicates if this detail is required (true) or not (false)

_ecoHeaderIDNum_

Identifier of the ECO header

_partRevisionObjid_

The objid of the part revision of the material that was put in use.

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateEcoMaterialDetail.md)