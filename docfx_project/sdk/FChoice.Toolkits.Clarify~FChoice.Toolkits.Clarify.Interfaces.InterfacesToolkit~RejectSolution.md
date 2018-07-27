### RejectSolution Method

Reject the Solution from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.

Reject the Solution from the queue in which it currently resides, and return it to the owner.

#### Overload List

| Overload | Description |
| --- | --- |
| [RejectSolution(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~RejectSolution(String).md) | Reject the Solution from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.   |
| [RejectSolution(RejectSolutionSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~RejectSolution(RejectSolutionSetup).md) | Reject the Solution from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.   |
| [RejectSolution(RejectSolutionSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~RejectSolution(RejectSolutionSetup,IDbTransaction).md) | Reject the Solution from the queue in which it currently resides, and return it to the owner. This overload takes a setup object and a database transaction.   |

#### Remarks

The Solution must be in open condition, and currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[RejectSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.RejectSolutionSetup.md)