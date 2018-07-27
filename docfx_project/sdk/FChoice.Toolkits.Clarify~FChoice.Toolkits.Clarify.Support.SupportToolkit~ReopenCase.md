### ReopenCase Method

Reopens the specified Case. This overload takes a set of required parameters for the API.

Reopens the specified Case.

#### Overload List

| Overload | Description |
| --- | --- |
| [ReopenCase(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ReopenCase(String).md) | Reopens the specified Case. This overload takes a set of required parameters for the API.   |
| [ReopenCase(ReopenCaseSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ReopenCase(ReopenCaseSetup).md) | Reopens the specified Case. This overload takes a setup object.   |
| [ReopenCase(ReopenCaseSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ReopenCase(ReopenCaseSetup,IDbTransaction).md) | Reopens the specified Case. This overload takes a setup object and a database transaction.   |

#### Remarks

The [User](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenCaseSetup~UserName.md) that reopens the Case becomes the new owner.

If the [WipBin](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenCaseSetup~WipBin.md) is not specified the Case is placed in the user's default WipBin.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[ReopenCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenCaseSetup.md)