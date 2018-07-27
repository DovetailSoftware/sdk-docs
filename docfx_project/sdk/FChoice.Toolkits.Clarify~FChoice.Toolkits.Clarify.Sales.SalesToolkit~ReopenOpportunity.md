### ReopenOpportunity Method

Causes the specified Opportunity to be reopened. This overload takes a set of required parameters for the API.

Causes the specified Opportunity to be reopened.

#### Overload List

| Overload | Description |
| --- | --- |
| [ReopenOpportunity(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ReopenOpportunity(String).md) | Causes the specified Opportunity to be reopened. This overload takes a set of required parameters for the API.   |
| [ReopenOpportunity(ReopenOpportunitySetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ReopenOpportunity(ReopenOpportunitySetup).md) | Causes the specified Opportunity to be reopened. This overload takes a setup object.   |
| [ReopenOpportunity(ReopenOpportunitySetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ReopenOpportunity(ReopenOpportunitySetup,IDbTransaction).md) | Causes the specified Opportunity to be reopened. This overload takes a setup object and a database transaction.   |

#### Remarks

The status may be specified (in Open Lead condition) for the Opportunity, as well as the user name of the opener, and the date/time of the reopen. The WIPBIN to place the opportunity in may be specified. The API can also generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[ReopenOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ReopenOpportunitySetup.md)