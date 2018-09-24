### LogPartsUsedExchange Method

#### Overload List

| Overload | Description |
| --- | --- |
| [LogPartsUsedExchange(String,Int32,String,String,String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedExchange(String,Int32,String,String,String,String).md) |   |
| [LogPartsUsedExchange(String,Int32,String,String,String,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedExchange(String,Int32,String,String,String,Int32).md) |   |
| [LogPartsUsedExchange(String,String,Int32,String,String,String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedExchange(String,String,Int32,String,String,String,String).md) |   |
| [LogPartsUsedExchange(String,String,Int32,String,String,String,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedExchange(String,String,Int32,String,String,String,Int32).md) |   |
| [LogPartsUsedExchange(LogPartsUsedExchangeSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedExchange(LogPartsUsedExchangeSetup).md) |   |
| [LogPartsUsedExchange(LogPartsUsedExchangeSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedExchange(LogPartsUsedExchangeSetup,IDbTransaction).md) | Used to replace an existing site part with a new site part. This overload takes a setup object and a database transaction.   |

#### Remarks

Each log parts used transaction must be related to either a case or a part request detail. If it is related to both, the part request detail must be linked to the case.

Both serialized and quantity-tracked parts can be logged, and the API performs all of the correct operations, based on the serial number/quantity fields.

For the site part being installed, the part number, revision (mod_level), and domain must be specified. Also, the quantity and/or serial number should be supplied. Optionally, the installed part’s price can be specified, and the “InstallAtSite” should be specified to determine if it is installed at the top-level of the site, or under another site part. In the latter case, the objid of the parent site part must be specified. Optionally, the part to be installed can be pulled from inventory (or an Expense GL account) by specifying the “from” fields.

If a part is to be installed (serialized parts only), and already exists in the system as a site part, it will be moved (not installed). This assumes that the “allow_move” flag is set to True. If not, an error code is produced.

For the site part being removed, the objid of the part to be removed must be specified. Optionally, a removed part may be placed back in inventory. If the “to” fields for location, bin, and good/bad are specified, the part will be put back in inventory. It can also be transferred to an Expense GL account.

When the log parts used action occurs, the API will change the condition of the part request (if one is listed in the arguments) to either the condition of: Part Used or Update Inv. If there are no inventory movements, the former condition will be used. If  either the install or remove part are moved to/from inventory, the condition will be set to Update Inv. In both cases, the API will set the status of the part request to the default status for the condition, and will validate the ClearLogistics transitions to make sure that the user who is logging the action can perform the state transition.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)
[LogPartsUsedExchangeSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedExchangeSetup.md)
