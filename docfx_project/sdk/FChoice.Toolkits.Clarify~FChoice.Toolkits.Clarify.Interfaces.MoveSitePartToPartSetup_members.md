     MoveSitePartToPartSetup Class Members                                                   

fcSDK Documentation

MoveSitePartToPartSetup Class Members

The following tables list the members exposed by [MoveSitePartToPartSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup.md).

Public Constructors

|   | Name | Description |
| --- | --- | --- |
| ![Public Constructor](dotnetimages/publicConstructor.png) | [MoveSitePartToPartSetup Constructor](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup~_ctor.md) | Initializes a new instance of the MoveSitePartToPartSetup class.   |

[Top](#top)

Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [AddActivityLog](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup~AddActivityLog.md) | Should an activity log be created for the move?   |
| ![Public Property](dotnetimages/publicProperty.png) | [InstallAndMove](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup~InstallAndMove.md) | 
If [AddActivityLog](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup~AddActivityLog.md) is true. Should the activity be listed as an Install/Move (**true)** or just a Move (**false**)

  |
| ![Public Property](dotnetimages/publicProperty.png) | [MoveDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup~MoveDate.md) | DateTime the SitePartToPart was moved. If not set, the current time is used.   |
| ![Public Property](dotnetimages/publicProperty.png) | [ParentSitePartObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup~ParentSitePartObjid.md) | Objid of the parent Site Part this [Site Part](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup~SitePartObjid.md) will be placed into   |
| ![Public Property](dotnetimages/publicProperty.png) | [SitePartObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup~SitePartObjid.md) | 

Objid of the Site Part to be moved

  |
| ![Public Property](dotnetimages/publicProperty.png) | [UserName](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup~UserName.md) | The user who has moved the SitePartToPart. If not set, the Toolkit session user is used.   |

[Top](#top)

See Also

#### Reference

[MoveSitePartToPartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup.md)  
[FChoice.Toolkits.Clarify.Interfaces Namespace](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces_namespace.md)  
[MoveSitePartToPart(MoveSitePartToPartSetup) Method](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSitePartToPart(MoveSitePartToPartSetup).md)