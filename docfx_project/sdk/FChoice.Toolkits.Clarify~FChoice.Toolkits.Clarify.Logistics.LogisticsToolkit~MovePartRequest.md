### MovePartRequest Method

Move the PartRequest from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

Move the PartRequest from one WipBin to another WipBin.

#### Overload List

| Overload | Description |
| --- | --- |
| [MovePartRequest(String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~MovePartRequest(String,String).md) | Move the PartRequest from one WipBin to another WipBin. This overload takes a set of required parameters for the API.   |
| [MovePartRequest(MovePartRequestSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~MovePartRequest(MovePartRequestSetup).md) | Move the PartRequest from one WipBin to another WipBin. This overload takes a setup object.   |
| [MovePartRequest(MovePartRequestSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~MovePartRequest(MovePartRequestSetup,IDbTransaction).md) | Move the PartRequest from one WipBin to another WipBin. This overload takes a setup object and a database transaction.   |

#### Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the PartRequest, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)
[FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.MovePartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.MovePartRequestSetup.md)
