     PartTransfer Method (FieldOpsToolkit)                                                   

fcSDK Documentation

PartTransfer Method (FieldOpsToolkit)

Initializes a new instance of the PartTransferSetup class. This overload takes a set of required parameters for the API.

Allows parts to be transferred independent of a part request to fix order errors, correct inventory variances, move parts from one inventory location (or account) to another (without having to relate that movement to a part request), and scrap parts out of inventory.

Overload List

| Overload | Description |
| --- | --- |
| [PartTransfer(String,String,String,Int32,Location,Location)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~PartTransfer(String,String,String,Int32,Location,Location).md) | Initializes a new instance of the PartTransferSetup class. This overload takes a set of required parameters for the API.   |
| [PartTransfer(String,String,String,String,Location,Location)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~PartTransfer(String,String,String,String,Location,Location).md) | Initializes a new instance of the PartTransferSetup class. This overload takes a set of required parameters for the API.   |
| [PartTransfer(PartTransferSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~PartTransfer(PartTransferSetup).md) |   |
| [PartTransfer(PartTransferSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~PartTransfer(PartTransferSetup,IDbTransaction).md) | 
Allows parts to be transferred independent of a part request to fix order errors, correct inventory variances, move parts from one inventory location (or account) to another (without having to relate that movement to a part request), and scrap parts out of inventory.

This overload takes a setup object and a database transaction.   |

Remarks

As in Clarify, the transfer can be from good or bad stock and can be to good or bad stock.

This API checks part authorization levels for auto-replenishment, and will automatically work with that engine.

To use primary bin suggestions/recommendations, please see the remarks on the [ToLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferSetup~ToLocation.md) and/or [FromLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferSetup~FromLocation.md) properties on the [PartTransferSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferSetup.md) object.

This API supports transferring parts by quantity or a specific serial number.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[PartTransferSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferSetup.md)