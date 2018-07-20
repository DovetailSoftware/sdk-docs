### AssignOpportunity Method

Assign the Opportunity to a new user. This overload takes a set of required parameters for the API.

Assign the Opportunity to a new user.

Overload List

| Overload | Description |
| --- | --- |
| [AssignOpportunity(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignOpportunity(String).md) | Assign the Opportunity to a new user. This overload takes a set of required parameters for the API.   |
| [AssignOpportunity(AssignOpportunitySetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignOpportunity(AssignOpportunitySetup).md) | Assign the Opportunity to a new user. This overload takes a setup object.   |
| [AssignOpportunity(AssignOpportunitySetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignOpportunity(AssignOpportunitySetup,IDbTransaction).md) | Assign the Opportunity to a new user. This overload takes a setup object and a database transaction.   |

Remarks

The Opportunity must be in the Open condition, and the user assigning the Opportunity does not have to be the owner of the Opportunity. In base Clarify, the assigner of a Opportunity must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Opportunity in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[AssignOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.AssignOpportunitySetup.md)