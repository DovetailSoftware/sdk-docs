### ChangeQuoteStatus Method (ContractsToolkit)

Causes the specified quote to have its status changed. This overload takes a set of required parameters for the API.

Causes the specified quote to have its status changed.

Overload List

| Overload | Description |
| --- | --- |
| [ChangeQuoteStatus(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ChangeQuoteStatus(String).md) | Causes the specified quote to have its status changed. This overload takes a set of required parameters for the API.   |
| [ChangeQuoteStatus(ChangeQuoteStatusSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ChangeQuoteStatus(ChangeQuoteStatusSetup).md) | Causes the specified quote to have its status changed. This overload takes a setup object.   |
| [ChangeQuoteStatus(ChangeQuoteStatusSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ChangeQuoteStatus(ChangeQuoteStatusSetup,IDbTransaction).md) | Causes the specified quote to have its status changed. This overload takes a setup object and a database transaction.   |

Remarks

The quote may be in any valid condition, but the status selected MUST be valid for the current condition. In other words, you cannot assign an Active Contract condition status to a quote that is currently in Quote condition.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[ChangeQuoteStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ChangeQuoteStatusSetup.md)