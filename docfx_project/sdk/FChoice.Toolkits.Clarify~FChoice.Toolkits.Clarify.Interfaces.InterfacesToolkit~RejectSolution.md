     RejectSolution Method                                                   

fcSDK Documentation

RejectSolution Method

Reject the Solution from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.

Reject the Solution from the queue in which it currently resides, and return it to the owner.

Overload List

| Overload | Description |
| --- | --- |
| [RejectSolution(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~RejectSolution(String).md) | Reject the Solution from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.   |
| [RejectSolution(RejectSolutionSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~RejectSolution(RejectSolutionSetup).md) | Reject the Solution from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.   |
| [RejectSolution(RejectSolutionSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~RejectSolution(RejectSolutionSetup,IDbTransaction).md) | Reject the Solution from the queue in which it currently resides, and return it to the owner. This overload takes a setup object and a database transaction.   |

Remarks

The Solution must be in open condition, and currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[RejectSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.RejectSolutionSetup.md)