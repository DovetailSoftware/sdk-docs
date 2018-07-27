### AssignQuote Method (ContractsToolkit)

Assign the Quote to a new user. This overload takes a set of required parameters for the API.

Assign the Quote to a new user.

#### Overload List

| Overload | Description |
| --- | --- |
| [AssignQuote(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~AssignQuote(String).md) | Assign the Quote to a new user. This overload takes a set of required parameters for the API.   |
| [AssignQuote(AssignQuoteSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~AssignQuote(AssignQuoteSetup).md) | Assign the Quote to a new user. This overload takes a setup object.   |
| [AssignQuote(AssignQuoteSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~AssignQuote(AssignQuoteSetup,IDbTransaction).md) | Assign the Quote to a new user. This overload takes a setup object and a database transaction.   |

#### Remarks

The Quote must be in the Open condition, and the user assigning the Quote does not have to be the owner of the Quote. In base Clarify, the assigner of a Quote must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Quote in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[AssignQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.AssignQuoteSetup.md)