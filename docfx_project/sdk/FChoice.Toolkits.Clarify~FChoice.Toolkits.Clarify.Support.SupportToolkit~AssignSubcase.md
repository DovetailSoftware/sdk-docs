     AssignSubcase Method                                                   

fcSDK Documentation

AssignSubcase Method

Assign the Subcase to a new user. This overload takes a set of required parameters for the API.

Assign the Subcase to a new user.

Overload List

| Overload | Description |
| --- | --- |
| [AssignSubcase(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AssignSubcase(String).md) | Assign the Subcase to a new user. This overload takes a set of required parameters for the API.   |
| [AssignSubcase(AssignSubcaseSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AssignSubcase(AssignSubcaseSetup).md) | Assign the Subcase to a new user. This overload takes a setup object.   |
| [AssignSubcase(AssignSubcaseSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AssignSubcase(AssignSubcaseSetup,IDbTransaction).md) | Assign the Subcase to a new user. This overload takes a setup object and a database transaction.   |

Remarks

The Subcase must be in the Open condition, and the user assigning the Subcase does not have to be the owner of the Subcase. In base Clarify, the assigner of a Subcase must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Subcase in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[AssignSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.AssignSubcaseSetup.md)