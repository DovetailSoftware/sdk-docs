### AssignPartRequest Method

Assign the PartRequest to a new user. This overload takes a set of required parameters for the API.

Assign the PartRequest to a new user.

Overload List

| Overload | Description |
| --- | --- |
| [AssignPartRequest(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AssignPartRequest(String).md) | Assign the PartRequest to a new user. This overload takes a set of required parameters for the API.   |
| [AssignPartRequest(AssignPartRequestSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AssignPartRequest(AssignPartRequestSetup).md) | Assign the PartRequest to a new user. This overload takes a setup object.   |
| [AssignPartRequest(AssignPartRequestSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AssignPartRequest(AssignPartRequestSetup,IDbTransaction).md) | Assign the PartRequest to a new user. This overload takes a setup object and a database transaction.   |

Remarks

The PartRequest must be in the Open condition, and the user assigning the PartRequest does not have to be the owner of the PartRequest. In base Clarify, the assigner of a PartRequest must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the PartRequest in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.AssignPartRequestSetup", Caption="AssignPartRequestSetup Class"**