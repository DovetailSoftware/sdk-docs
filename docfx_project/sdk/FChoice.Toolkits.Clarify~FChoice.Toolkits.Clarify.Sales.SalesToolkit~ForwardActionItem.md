### ForwardActionItem Method

Reject-forward the ActionItem from one queue to another. This overload takes a set of required parameters for the API.

Reject-forward the ActionItem from one queue to another.

#### Overload List

| Overload | Description |
| --- | --- |
| [ForwardActionItem(String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ForwardActionItem(String,String).md) | Reject-forward the ActionItem from one queue to another. This overload takes a set of required parameters for the API.   |
| [ForwardActionItem(ForwardActionItemSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ForwardActionItem(ForwardActionItemSetup).md) | Reject-forward the ActionItem from one queue to another. This overload takes a setup object.   |
| [ForwardActionItem(ForwardActionItemSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ForwardActionItem(ForwardActionItemSetup,IDbTransaction).md) | Reject-forward the ActionItem from one queue to another. This overload takes a setup object and a database transaction.   |

#### Remarks

The ActionItem must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[ForwardActionItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ForwardActionItemSetup.md)