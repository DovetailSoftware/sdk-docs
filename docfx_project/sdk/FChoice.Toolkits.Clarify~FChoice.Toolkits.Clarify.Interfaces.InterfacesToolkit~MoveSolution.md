     MoveSolution Method                                                   

fcSDK Documentation

MoveSolution Method

Move the Solution from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

Move the Solution from one WipBin to another WipBin.

Overload List

| Overload | Description |
| --- | --- |
| [MoveSolution(String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSolution(String,String).md) | Move the Solution from one WipBin to another WipBin. This overload takes a set of required parameters for the API.   |
| [MoveSolution(MoveSolutionSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSolution(MoveSolutionSetup).md) | Move the Solution from one WipBin to another WipBin. This overload takes a setup object.   |
| [MoveSolution(MoveSolutionSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSolution(MoveSolutionSetup,IDbTransaction).md) | Move the Solution from one WipBin to another WipBin. This overload takes a setup object and a database transaction.   |

Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the Solution, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[MoveSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSolutionSetup.md)