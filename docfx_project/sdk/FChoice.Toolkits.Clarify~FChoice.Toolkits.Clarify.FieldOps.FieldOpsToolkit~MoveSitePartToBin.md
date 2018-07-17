     MoveSitePartToBin Method (FieldOpsToolkit)                                                   

fcSDK Documentation

MoveSitePartToBin Method (FieldOpsToolkit)

Move the SitePartToBin from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

Used to move an existing site part from its current location to a product bin within the Clarify site configuration.

Overload List

| Overload | Description |
| --- | --- |
| [MoveSitePartToBin(Int32,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~MoveSitePartToBin(Int32,Int32).md) | Move the SitePartToBin from one WipBin to another WipBin. This overload takes a set of required parameters for the API.   |
| [MoveSitePartToBin(MoveSitePartToBinSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~MoveSitePartToBin(MoveSitePartToBinSetup).md) | Move the SitePartToBin from one WipBin to another WipBin. This overload takes a setup object.   |
| [MoveSitePartToBin(MoveSitePartToBinSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~MoveSitePartToBin(MoveSitePartToBinSetup,IDbTransaction).md) | Used to move an existing site part from its current location to a product bin within the Clarify site configuration. This overload takes a setup object and a database transaction.   |

Remarks

The site part to be moved must be current (not de-installed).

When a site_part is moved, all sub-site_parts underneath it are also moved.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[MoveSitePartToBinSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.MoveSitePartToBinSetup.md)