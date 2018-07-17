     AssignCase Method                                                   

fcSDK Documentation

AssignCase Method

Assign the Case to a new user. This overload takes a set of required parameters for the API.

Assign the Case to a new user.

Overload List

| Overload | Description |
| --- | --- |
| [AssignCase(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AssignCase(String).md) | Assign the Case to a new user. This overload takes a set of required parameters for the API.   |
| [AssignCase(AssignCaseSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AssignCase(AssignCaseSetup).md) | Assign the Case to a new user. This overload takes a setup object.   |
| [AssignCase(AssignCaseSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AssignCase(AssignCaseSetup,IDbTransaction).md) | Assign the Case to a new user. This overload takes a setup object and a database transaction.   |

Remarks

The Case must be in the Open condition, and the user assigning the Case does not have to be the owner of the Case. In base Clarify, the assigner of a Case must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Case in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[AssignCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.AssignCaseSetup.md)