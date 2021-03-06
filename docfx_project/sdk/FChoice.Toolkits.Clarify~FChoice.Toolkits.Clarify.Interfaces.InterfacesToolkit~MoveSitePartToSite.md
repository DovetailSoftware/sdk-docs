﻿### MoveSitePartToSite Method (InterfacesToolkit)

Move the SitePartToSite from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

Move the SitePartToSite from one WipBin to another WipBin.

#### Overload List

| Overload | Description |
| --- | --- |
| [MoveSitePartToSite(Int32,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSitePartToSite(Int32,String).md) | Move the SitePartToSite from one WipBin to another WipBin. This overload takes a set of required parameters for the API.   |
| [MoveSitePartToSite(MoveSitePartToSiteSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSitePartToSite(MoveSitePartToSiteSetup).md) | Move the SitePartToSite from one WipBin to another WipBin. This overload takes a setup object.   |
| [MoveSitePartToSite(MoveSitePartToSiteSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSitePartToSite(MoveSitePartToSiteSetup,IDbTransaction).md) | Move the SitePartToSite from one WipBin to another WipBin. This overload takes a setup object and a database transaction.   |

#### Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the SitePartToSite, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[MoveSitePartToSiteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToSiteSetup.md)