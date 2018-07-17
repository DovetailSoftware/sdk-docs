     PartTransfer(String,String,String,Int32,Location,Location) Method                                                   

fcSDK Documentation

PartTransfer(String,String,String,Int32,Location,Location) Method

Part number for the Part Request

Part revision for the Part Request

Part domain for the Part Request

The number of parts being transferred

Inventory location (or expense GL) and bin from which to transfer the part

Inventory location and bin (or GL account) into which the part is being transferred

Initializes a new instance of the PartTransferSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function PartTransfer( _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _quantity_ As [Integer](#), _
   ByVal _fromlocation_ As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md), _
   ByVal _tolocation_ As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _
) As [PartTransferResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferResult.md)

public [PartTransferResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferResult.md) PartTransfer( 
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   [int](#) _quantity_,
   [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _fromlocation_,
   [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _tolocation_
)

#### Parameters

_partNumber_

Part number for the Part Request

_partRevision_

Part revision for the Part Request

_partDomain_

Part domain for the Part Request

_quantity_

The number of parts being transferred

_fromlocation_

Inventory location (or expense GL) and bin from which to transfer the part

_tolocation_

Inventory location and bin (or GL account) into which the part is being transferred

#### Return Value

The following values are populated in the [PartTransferResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferResult.md) object returned by the API method:

*   [StandardCost](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferResult~StandardCost.md) \- Part Transfer Standard Cost.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferResult~Objid.md) \- Objid of the Part Transfer record.
*   [TransactionIDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferResult~TransactionIDNum.md) \- Part Transfer Transaction Identifier.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~PartTransfer.md)