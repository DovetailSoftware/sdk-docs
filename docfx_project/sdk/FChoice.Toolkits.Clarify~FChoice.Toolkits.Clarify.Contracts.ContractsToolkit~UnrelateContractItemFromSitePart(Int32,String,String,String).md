### UnrelateContractItemFromSitePart(Int32,String,String,String) Method

The objid of the Contract for this Line Item.

The part number for the Line Item.

The domain of the part for the Line Item.

The revision of the part for the Line Item.

Used to unrelate a Site Part from a contract line item. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function UnrelateContractItemFromSitePart( _
   ByVal _contractObjid_ As Integer, _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult UnrelateContractItemFromSitePart( 
   int _contractObjid_,
   string _partNumber_,
   string _partDomain_,
   string _partRevision_
)
```

#### Parameters

_contractObjid_

The objid of the Contract for this Line Item.

_partNumber_

The part number for the Line Item.

_partDomain_

The domain of the part for the Line Item.

_partRevision_

The revision of the part for the Line Item.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The line item’s objid must be specified, along with the details for locating the site_part.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~UnrelateContractItemFromSitePart.md)