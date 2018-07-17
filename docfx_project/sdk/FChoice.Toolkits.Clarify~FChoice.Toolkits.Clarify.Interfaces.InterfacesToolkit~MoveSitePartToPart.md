     MoveSitePartToPart Method (InterfacesToolkit)                                                   

fcSDK Documentation

MoveSitePartToPart Method (InterfacesToolkit)

Move the SitePartToPart from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

Move the SitePartToPart from one WipBin to another WipBin.

Overload List

| Overload | Description |
| --- | --- |
| [MoveSitePartToPart(Int32,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSitePartToPart(Int32,Int32).md) | Move the SitePartToPart from one WipBin to another WipBin. This overload takes a set of required parameters for the API.   |
| [MoveSitePartToPart(MoveSitePartToPartSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSitePartToPart(MoveSitePartToPartSetup).md) | Move the SitePartToPart from one WipBin to another WipBin. This overload takes a setup object.   |
| [MoveSitePartToPart(MoveSitePartToPartSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSitePartToPart(MoveSitePartToPartSetup,IDbTransaction).md) | Move the SitePartToPart from one WipBin to another WipBin. This overload takes a setup object and a database transaction.   |

Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the SitePartToPart, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[MoveSitePartToPartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup.md)