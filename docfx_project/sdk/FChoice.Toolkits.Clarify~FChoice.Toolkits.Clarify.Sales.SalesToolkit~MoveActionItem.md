### MoveActionItem Method

Move the ActionItem from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

Move the ActionItem from one WipBin to another WipBin.

Overload List

| Overload | Description |
| --- | --- |
| [MoveActionItem(String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~MoveActionItem(String,String).md) | Move the ActionItem from one WipBin to another WipBin. This overload takes a set of required parameters for the API.   |
| [MoveActionItem(MoveActionItemSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~MoveActionItem(MoveActionItemSetup).md) | Move the ActionItem from one WipBin to another WipBin. This overload takes a setup object.   |
| [MoveActionItem(MoveActionItemSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~MoveActionItem(MoveActionItemSetup,IDbTransaction).md) | Move the ActionItem from one WipBin to another WipBin. This overload takes a setup object and a database transaction.   |

Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the ActionItem, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[MoveActionItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.MoveActionItemSetup.md)