### ApplyEco(Int32,String) Method

Objid of the related Part Request Detail

Identifier of the ECO header

Apply an ECO to a Part Request Detail. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function ApplyEco( _
   ByVal _demandDetailObjid_ As Integer, _
   ByVal _ecoHeaderIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ApplyEco( 
   int _demandDetailObjid_,
   string _ecoHeaderIDNum_
)

#### Parameters

_demandDetailObjid_

Objid of the related Part Request Detail

_ecoHeaderIDNum_

Identifier of the ECO header

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~ApplyEco.md)