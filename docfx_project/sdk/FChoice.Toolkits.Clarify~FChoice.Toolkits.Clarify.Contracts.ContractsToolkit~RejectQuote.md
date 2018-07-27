### RejectQuote Method (ContractsToolkit)

Reject the Quote from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.

Reject the Quote from the queue in which it currently resides, and return it to the owner.

#### Overload List

| Overload | Description |
| --- | --- |
| [RejectQuote(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~RejectQuote(String).md) | Reject the Quote from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.   |
| [RejectQuote(RejectQuoteSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~RejectQuote(RejectQuoteSetup).md) | Reject the Quote from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.   |
| [RejectQuote(RejectQuoteSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~RejectQuote(RejectQuoteSetup,IDbTransaction).md) | Reject the Quote from the queue in which it currently resides, and return it to the owner. This overload takes a setup object and a database transaction.   |

#### Remarks

The Quote must be in open condition, and currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[RejectQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.RejectQuoteSetup.md)