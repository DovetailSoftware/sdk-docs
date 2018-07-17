     LogPartsUsedRemove Method                                                   

fcSDK Documentation

LogPartsUsedRemove Method

Used to remove an existing site part. This overload takes a setup object and a database transaction.

Used to remove an existing site part.

Overload List

| Overload | Description |
| --- | --- |
| [LogPartsUsedRemove(String,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedRemove(String,Int32).md) |   |
| [LogPartsUsedRemove(String,String,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedRemove(String,String,Int32).md) |   |
| [LogPartsUsedRemove(LogPartsUsedRemoveSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedRemove(LogPartsUsedRemoveSetup).md) |   |
| [LogPartsUsedRemove(LogPartsUsedRemoveSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedRemove(LogPartsUsedRemoveSetup,IDbTransaction).md) | Used to remove an existing site part. This overload takes a setup object and a database transaction.   |

Remarks

Each log parts used transaction must be related to either a case or a part request detail. If it is related to both, the part request detail must be linked to the case.

Both serialized and quantity-tracked parts can be logged, and the API performs all of the correct operations, based on the serial number/quantity fields.

For the site part being removed, the objid of the part to be removed must be specified. Optionally, a removed part may be placed back in inventory. If the “to” fields for location, bin, and good/bad are specified, the part will be put back in inventory. It can also be transferred to an Expense GL account.

When the log parts used action occurs, the API will change the condition of the part request (if one is listed in the arguments) to either the condition of: Part Used or Update Inv. If there are no inventory movements, the former condition will be used. If  either the install or remove part are moved to/from inventory, the condition will be set to Update Inv. In both cases, the API will set the status of the part request to the default status for the condition, and will validate the ClearLogistics transitions to make sure that the user who is logging the action can perform the state transition.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[LogPartsUsedRemoveSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedRemoveSetup.md)