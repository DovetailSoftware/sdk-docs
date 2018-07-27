### AssignActionItem Method

Assign the ActionItem to a new user. This overload takes a set of required parameters for the API.

Assign the ActionItem to a new user.

#### Overload List

| Overload | Description |
| --- | --- |
| [AssignActionItem(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignActionItem(String).md) | Assign the ActionItem to a new user. This overload takes a set of required parameters for the API.   |
| [AssignActionItem(AssignActionItemSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignActionItem(AssignActionItemSetup).md) | Assign the ActionItem to a new user. This overload takes a setup object.   |
| [AssignActionItem(AssignActionItemSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignActionItem(AssignActionItemSetup,IDbTransaction).md) | Assign the ActionItem to a new user. This overload takes a setup object and a database transaction.   |

#### Remarks

The ActionItem must be in the Open condition, and the user assigning the ActionItem does not have to be the owner of the ActionItem. In base Clarify, the assigner of a ActionItem must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the ActionItem in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[AssignActionItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.AssignActionItemSetup.md)