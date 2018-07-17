     ReinstallSitePart Method                                                   

fcSDK Documentation

ReinstallSitePart Method

Used to re-install a site part (and the sub-parts installed underneath it) that have been deinstalled from a site. This overload takes a setup object and a database transaction.

Used to re-install a site part (and the sub-parts installed underneath it) that have been deinstalled from a site.

Overload List

| Overload | Description |
| --- | --- |
| [ReinstallSitePart(Int32,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~ReinstallSitePart(Int32,String).md) |   |
| [ReinstallSitePart(ReinstallSitePartSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~ReinstallSitePart(ReinstallSitePartSetup).md) |   |
| [ReinstallSitePart(ReinstallSitePartSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~ReinstallSitePart(ReinstallSitePartSetup,IDbTransaction).md) | Used to re-install a site part (and the sub-parts installed underneath it) that have been deinstalled from a site. This overload takes a setup object and a database transaction.   |

Remarks

If the site part is to be reinstalled in a bin, the bin objid is specified. If it is to be installed under another part, the parent part objid is specified. If the site part is to be installed at the top-level of the site, neither objid is specified.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[ReinstallSitePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.ReinstallSitePartSetup.md)