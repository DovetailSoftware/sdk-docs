     AssignLead Method                                                   

fcSDK Documentation

AssignLead Method

Assign the Lead to a new user. This overload takes a set of required parameters for the API.

Assign the Lead to a new user.

Overload List

| Overload | Description |
| --- | --- |
| [AssignLead(Int32,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignLead(Int32,String).md) | Assign the Lead to a new user. This overload takes a set of required parameters for the API.   |
| [AssignLead(AssignLeadSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignLead(AssignLeadSetup).md) | Assign the Lead to a new user. This overload takes a setup object.   |
| [AssignLead(AssignLeadSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignLead(AssignLeadSetup,IDbTransaction).md) | Assign the Lead to a new user. This overload takes a setup object and a database transaction.   |

Remarks

The Lead must be in the Open condition, and the user assigning the Lead does not have to be the owner of the Lead. In base Clarify, the assigner of a Lead must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Lead in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[AssignLeadSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.AssignLeadSetup.md)