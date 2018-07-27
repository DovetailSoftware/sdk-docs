### InstallSitePart Method

Used to install a site part. This overload takes a setup object and a database transaction.

Used to install a site part.

#### Overload List

| Overload | Description |
| --- | --- |
| [InstallSitePart(String,String,String,String,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~InstallSitePart(String,String,String,String,Int32).md) |   |
| [InstallSitePart(String,String,String,String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~InstallSitePart(String,String,String,String,String).md) |   |
| [InstallSitePart(InstallSitePartSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~InstallSitePart(InstallSitePartSetup).md) |   |
| [InstallSitePart(InstallSitePartSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~InstallSitePart(InstallSitePartSetup,IDbTransaction).md) | Used to install a site part. This overload takes a setup object and a database transaction.   |

#### Remarks

The part can be installed at the top level of the site, under another site part or in a bin. If the part revision to be installed has a bill of materials (BOM), that BOM will also be installed at the site under the new site part. If the sub-parts are serial tracked, the API will generate the proper new serial numbers for the sub-parts. If the part to be installed is serialized, and the quantity is > 1, the API will generate individual parts (sub-parts only).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[InstallSitePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.InstallSitePartSetup.md)