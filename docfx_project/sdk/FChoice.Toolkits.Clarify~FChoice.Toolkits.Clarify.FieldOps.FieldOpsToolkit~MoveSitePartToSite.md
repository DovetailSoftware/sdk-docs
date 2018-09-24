### MoveSitePartToSite Method (FieldOpsToolkit)

#### Overload List

| Overload | Description |
| --- | --- |
| [MoveSitePartToSite(Int32,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~MoveSitePartToSite(Int32,String).md) | Move the SitePartToSite from one WipBin to another WipBin. This overload takes a set of required parameters for the API.   |
| [MoveSitePartToSite(MoveSitePartToSiteSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~MoveSitePartToSite(MoveSitePartToSiteSetup).md) | Move the SitePartToSite from one WipBin to another WipBin. This overload takes a setup object.   |
| [MoveSitePartToSite(MoveSitePartToSiteSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~MoveSitePartToSite(MoveSitePartToSiteSetup,IDbTransaction).md) | Used to move an existing site part from its current location to the top-level at a site. This overload takes a setup object and a database transaction.   |

#### Remarks

The site part to be moved must be current (not de-installed).

When a site_part is moved, all sub-site_parts underneath it are also moved.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)
[MoveSitePartToSiteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.MoveSitePartToSiteSetup.md)
