### ChangeSubcaseStatus Method

Changes the status of a Subcase. This overload takes a set of required parameters for the API.

Changes the status of a Subcase.

Overload List

| Overload | Description |
| --- | --- |
| [ChangeSubcaseStatus(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeSubcaseStatus(String).md) | Changes the status of a Subcase. This overload takes a set of required parameters for the API.   |
| [ChangeSubcaseStatus(ChangeSubcaseStatusSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeSubcaseStatus(ChangeSubcaseStatusSetup).md) | Changes the status of a Subcase. This overload takes a setup object.   |
| [ChangeSubcaseStatus(ChangeSubcaseStatusSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeSubcaseStatus(ChangeSubcaseStatusSetup,IDbTransaction).md) | Changes the status of a Subcase. This overload takes a setup object and a database transaction.   |

Remarks

The Subcase may be opened or closed, but the status selected must be valid for the current condition. In other words, you cannot assign a Closed condition status to a Subcase that is currently Open.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[ChangeSubcaseStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeSubcaseStatusSetup.md)