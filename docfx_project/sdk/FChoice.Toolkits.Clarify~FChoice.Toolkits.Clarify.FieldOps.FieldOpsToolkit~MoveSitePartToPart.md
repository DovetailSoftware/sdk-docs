### MoveSitePartToPart Method (FieldOpsToolkit)

Move the SitePartToPart from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

Used to move an existing site part from its current location to underneath another site part within the Clarify site configuration.

Overload List

| Overload | Description |
| --- | --- |
| [MoveSitePartToPart(Int32,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~MoveSitePartToPart(Int32,Int32).md) | Move the SitePartToPart from one WipBin to another WipBin. This overload takes a set of required parameters for the API.   |
| [MoveSitePartToPart(MoveSitePartToPartSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~MoveSitePartToPart(MoveSitePartToPartSetup).md) | Move the SitePartToPart from one WipBin to another WipBin. This overload takes a setup object.   |
| [MoveSitePartToPart(MoveSitePartToPartSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~MoveSitePartToPart(MoveSitePartToPartSetup,IDbTransaction).md) | Used to move an existing site part from its current location to underneath another site part within the Clarify site configuration. This overload takes a setup object and a database transaction.   |

Remarks

The site part to be moved must be current (not de-installed).

When a site_part is moved, all sub-site_parts underneath it are also moved.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[MoveSitePartToPartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.MoveSitePartToPartSetup.md)