### RejectActionItem Method

Reject the ActionItem from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.

Reject the ActionItem from the queue in which it currently resides, and return it to the owner.

#### Overload List

| Overload | Description |
| --- | --- |
| [RejectActionItem(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~RejectActionItem(String).md) | Reject the ActionItem from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.   |
| [RejectActionItem(RejectActionItemSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~RejectActionItem(RejectActionItemSetup).md) | Reject the ActionItem from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.   |
| [RejectActionItem(RejectActionItemSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~RejectActionItem(RejectActionItemSetup,IDbTransaction).md) | Reject the ActionItem from the queue in which it currently resides, and return it to the owner. This overload takes a setup object and a database transaction.   |

#### Remarks

The ActionItem must be in open condition, and currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[RejectActionItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.RejectActionItemSetup.md)