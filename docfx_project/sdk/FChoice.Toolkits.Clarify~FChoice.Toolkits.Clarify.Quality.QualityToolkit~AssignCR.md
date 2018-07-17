     AssignCR Method                                                   

fcSDK Documentation

AssignCR Method

Assign the CR to a new user. This overload takes a set of required parameters for the API.

Assign the CR to a new user.

Overload List

| Overload | Description |
| --- | --- |
| [AssignCR(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~AssignCR(String).md) | Assign the CR to a new user. This overload takes a set of required parameters for the API.   |
| [AssignCR(AssignCRSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~AssignCR(AssignCRSetup).md) | Assign the CR to a new user. This overload takes a setup object.   |
| [AssignCR(AssignCRSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~AssignCR(AssignCRSetup,IDbTransaction).md) | Assign the CR to a new user. This overload takes a setup object and a database transaction.   |

Remarks

The CR must be in the Open condition, and the user assigning the CR does not have to be the owner of the CR. In base Clarify, the assigner of a CR must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the CR in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[AssignCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AssignCRSetup.md)