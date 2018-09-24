### ForwardQuote Method (ContractsToolkit)

#### Overload List

| Overload | Description |
| --- | --- |
| [ForwardQuote(String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ForwardQuote(String,String).md) | Reject-forward the Quote from one queue to another. This overload takes a set of required parameters for the API.   |
| [ForwardQuote(ForwardQuoteSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ForwardQuote(ForwardQuoteSetup).md) | Reject-forward the Quote from one queue to another. This overload takes a setup object.   |
| [ForwardQuote(ForwardQuoteSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ForwardQuote(ForwardQuoteSetup,IDbTransaction).md) | Reject-forward the Quote from one queue to another. This overload takes a setup object and a database transaction.   |

#### Remarks

The Quote must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)
[ForwardQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ForwardQuoteSetup.md)
