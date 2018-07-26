### UpdateEcoItem(Int32,Boolean,String) Method

The objid of the ECO item object to be updated

Is the ECO item active (true) or inactive (false)

Identifier of the ECO header

Update an ECO Item. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function UpdateEcoItem( _
   ByVal _ecoItemObjid_ As Integer, _
   ByVal _isActive_ As Boolean, _
   ByVal _ecoHeaderIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateEcoItem( 
   int _ecoItemObjid_,
   bool _isActive_,
   string _ecoHeaderIDNum_
)
```

#### Parameters

_ecoItemObjid_

The objid of the ECO item object to be updated

_isActive_

Is the ECO item active (true) or inactive (false)

_ecoHeaderIDNum_

Identifier of the ECO header

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~UpdateEcoItem.md)