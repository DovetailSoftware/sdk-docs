### PartTransfer(PartTransferSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Allows parts to be transferred independent of a part request to fix order errors, correct inventory variances, move parts from one inventory location (or account) to another (without having to relate that movement to a part request), and scrap parts out of inventory.

This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function PartTransfer( _
   ByVal _setupParam_ As [PartTransferSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup.md), _
   ByVal _transaction_ As IDbTransaction _
) As [PartTransferResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferResult.md)

public [PartTransferResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferResult.md) PartTransfer( 
   [PartTransferSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup.md) _setupParam_,
   IDbTransaction _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [PartTransferResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

As in Clarify, the transfer can be from good or bad stock and can be to good or bad stock.

This API checks part authorization levels for auto-replenishment, and will automatically work with that engine.

To use primary bin suggestions/recommendations, please see the remarks on the [ToLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup~ToLocation.md) and/or [FromLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup~FromLocation.md) properties on the [PartTransferSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup.md) object.

This API supports transferring parts by quantity or a specific serial number.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~PartTransfer.md)