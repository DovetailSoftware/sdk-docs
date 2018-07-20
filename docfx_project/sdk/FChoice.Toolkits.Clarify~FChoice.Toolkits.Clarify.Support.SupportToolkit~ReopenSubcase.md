### ReopenSubcase Method

Reopens the specified Subcase. This overload takes a set of required parameters for the API.

Reopens the specified Subcase.

Overload List

| Overload | Description |
| --- | --- |
| [ReopenSubcase(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ReopenSubcase(String).md) | Reopens the specified Subcase. This overload takes a set of required parameters for the API.   |
| [ReopenSubcase(ReopenSubcaseSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ReopenSubcase(ReopenSubcaseSetup).md) | Reopens the specified Subcase. This overload takes a setup object.   |
| [ReopenSubcase(ReopenSubcaseSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ReopenSubcase(ReopenSubcaseSetup,IDbTransaction).md) | Reopens the specified Subcase. This overload takes a setup object and a database transaction.   |

Remarks

The [User](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenSubcaseSetup~UserName.md) that reopens the Subcase becomes the new owner.

If the [WipBin](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenSubcaseSetup~WipBin.md) is not specified the Subcase is placed in the user's default WipBin.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[ReopenSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenSubcaseSetup.md)