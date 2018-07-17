     PartTransfer(PartTransferSetup) Method                                                   

fcSDK Documentation

PartTransfer(PartTransferSetup) Method

Setup object for API invocation.

Allows parts to be transferred independent of a part request to fix order errors, correct inventory variances, move parts from one inventory location (or account) to another (without having to relate that movement to a part request), and scrap parts out of inventory.

This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function PartTransfer( _
   ByVal _setupParam_ As [PartTransferSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup.md) _
) As [PartTransferResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferResult.md)

public [PartTransferResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferResult.md) PartTransfer( 
   [PartTransferSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [PartTransferResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferResult.md) object returned by the API method:

*   [StandardCost](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferResult~StandardCost.md) \- Part Transfer Standard Cost.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferResult~Objid.md) \- Objid of the Part Transfer record.
*   [TransactionIDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferResult~TransactionIDNum.md) \- Part Transfer Transaction Identifier.

Remarks

As in Clarify, the transfer can be from good or bad stock and can be to good or bad stock.

This API checks part authorization levels for auto-replenishment, and will automatically work with that engine.

To use primary bin suggestions/recommendations, please see the remarks on the [ToLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup~ToLocation.md) and/or [FromLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup~FromLocation.md) properties on the [PartTransferSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup.md) object.

This API supports transferring parts by quantity or a specific serial number.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~PartTransfer.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup", Caption="PartTransferSetup Class"**