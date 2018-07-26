### PartTransfer(String,String,String,String,Location,Location) Method

Part number for the Part Request

Part revision for the Part Request

Part domain for the Part Request

The serial number of the part being transferred

Inventory location (or expense GL) and bin from which to transfer the part

Inventory location and bin (or GL account) into which the part is being transferred

Allows parts to be transferred independent of a part request to fix order errors, correct inventory variances, move parts from one inventory location (or account) to another (without having to relate that movement to a part request), and scrap parts out of inventory.

This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function PartTransfer( _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _serialNumber_ As String, _
   ByVal _fromlocation_ As Location, _
   ByVal _tolocation_ As Location _
) As PartTransferResult
```

```csharp
public PartTransferResult PartTransfer( 
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   string _serialNumber_,
   Location _fromlocation_,
   Location _tolocation_
)
```

#### Parameters

_partNumber_

Part number for the Part Request

_partRevision_

Part revision for the Part Request

_partDomain_

Part domain for the Part Request

_serialNumber_

The serial number of the part being transferred

_fromlocation_

Inventory location (or expense GL) and bin from which to transfer the part

_tolocation_

Inventory location and bin (or GL account) into which the part is being transferred

#### Return Value

The following values are populated in the PartTransferResult object returned by the API method:

*   Objid \- Objid of the Part Transfer record.
*   StandardCost \- Part Transfer Standard Cost.
*   TransactionIDNum \- Part Transfer Transaction Identifier.

Remarks

As in Clarify, the transfer can be from good or bad stock and can be to good or bad stock.

This API checks part authorization levels for auto-replenishment, and will automatically work with that engine.

To use primary bin suggestions/recommendations, please see the remarks on the ToLocation and/or FromLocation properties on the [PartTransferSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup.md) object.

This API supports transferring parts by quantity or a specific serial number.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~PartTransfer.md)