     RelateContractItemToSitePart(Int32,String,String,String,String) Method                                                   

fcSDK Documentation

RelateContractItemToSitePart(Int32,String,String,String,String) Method

The objid of the Contract for this Line Item.

The number of the part for the Line Item.

The domain of the part for the Line Item.

The revision of the part for the Line Item.

The serial number of the site part for thie Line Item.

Used to relate (or unrelate) a Site Part from a contract line item. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function RelateContractItemToSitePart( _
   ByVal _contractObjid_ As [Integer](#), _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _serialNumber_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) RelateContractItemToSitePart( 
   [int](#) _contractObjid_,
   string _partNumber_,
   string _partDomain_,
   string _partRevision_,
   string _serialNumber_
)

#### Parameters

_contractObjid_

The objid of the Contract for this Line Item.

_partNumber_

The number of the part for the Line Item.

_partDomain_

The domain of the part for the Line Item.

_partRevision_

The revision of the part for the Line Item.

_serialNumber_

The serial number of the site part for thie Line Item.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The line item’s objid is specified, along with the details for locating the site_part.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~RelateContractItemToSitePart.md)