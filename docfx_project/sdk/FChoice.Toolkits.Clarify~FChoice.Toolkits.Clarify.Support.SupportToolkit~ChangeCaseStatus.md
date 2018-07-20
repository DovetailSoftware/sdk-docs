### ChangeCaseStatus Method

Changes the status of a Case. This overload takes a set of required parameters for the API.

Changes the status of a Case.

Overload List

| Overload | Description |
| --- | --- |
| [ChangeCaseStatus(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeCaseStatus(String).md) | Changes the status of a Case. This overload takes a set of required parameters for the API.   |
| [ChangeCaseStatus(ChangeCaseStatusSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeCaseStatus(ChangeCaseStatusSetup).md) | Changes the status of a Case. This overload takes a setup object.   |
| [ChangeCaseStatus(ChangeCaseStatusSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeCaseStatus(ChangeCaseStatusSetup,IDbTransaction).md) | Changes the status of a Case. This overload takes a setup object and a database transaction.   |

Remarks

The Case may be opened or closed, but the status selected must be valid for the current condition. In other words, you cannot assign a Closed condition status to a Case that is currently Open.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[ChangeCaseStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeCaseStatusSetup.md)