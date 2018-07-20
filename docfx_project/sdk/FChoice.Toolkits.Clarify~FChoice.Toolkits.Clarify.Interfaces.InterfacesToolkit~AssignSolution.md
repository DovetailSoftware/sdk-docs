### AssignSolution Method

Assign the Solution to a new user. This overload takes a set of required parameters for the API.

Assign the Solution to a new user.

Overload List

| Overload | Description |
| --- | --- |
| [AssignSolution(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AssignSolution(String).md) | Assign the Solution to a new user. This overload takes a set of required parameters for the API.   |
| [AssignSolution(AssignSolutionSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AssignSolution(AssignSolutionSetup).md) | Assign the Solution to a new user. This overload takes a setup object.   |
| [AssignSolution(AssignSolutionSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AssignSolution(AssignSolutionSetup,IDbTransaction).md) | Assign the Solution to a new user. This overload takes a setup object and a database transaction.   |

Remarks

The Solution must be in the Open condition, and the user assigning the Solution does not have to be the owner of the Solution. In base Clarify, the assigner of a Solution must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Solution in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[AssignSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AssignSolutionSetup.md)