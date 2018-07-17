     CreateEcoItem(EcoItemAppliesTo,Boolean,String,Int32,Int32) Method                                                   

fcSDK Documentation

CreateEcoItem(EcoItemAppliesTo,Boolean,String,Int32,Int32) Method

This must be either 5148 to apply the ECO item to an ECO header, or 329 to apply the ECO item to a part revision.

Is the ECO item active (true) or inactive (false)

Identifier of the ECO header

The objid of part revision affected by the ECO, or 0 for no change.

The objid of resulting part revision after applying the ECO, or 0 for no change.

Create an Engineering Change Order (ECO) Item. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateEcoItem( _
   ByVal _appliesTo_ As [EcoItemAppliesTo](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.EcoItemAppliesTo.md), _
   ByVal _isActive_ As Boolean, _
   ByVal _ecoHeaderIDNum_ As String, _
   ByVal _applyPartRevisionObjid_ As [Integer](#), _
   ByVal _resultPartRevisionObjid_ As [Integer](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateEcoItem( 
   [EcoItemAppliesTo](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.EcoItemAppliesTo.md) _appliesTo_,
   bool _isActive_,
   string _ecoHeaderIDNum_,
   [int](#) _applyPartRevisionObjid_,
   [int](#) _resultPartRevisionObjid_
)

#### Parameters

_appliesTo_

This must be either 5148 to apply the ECO item to an ECO header, or 329 to apply the ECO item to a part revision.

_isActive_

Is the ECO item active (true) or inactive (false)

_ecoHeaderIDNum_

Identifier of the ECO header

_applyPartRevisionObjid_

The objid of part revision affected by the ECO, or 0 for no change.

_resultPartRevisionObjid_

The objid of resulting part revision after applying the ECO, or 0 for no change.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The objid of the ECO item created is returned in the object property ret_objid.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateEcoItem.md)