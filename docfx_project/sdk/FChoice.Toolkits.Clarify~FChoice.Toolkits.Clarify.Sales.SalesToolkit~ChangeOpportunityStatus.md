### ChangeOpportunityStatus Method

Cause the specified Opportunity to have its status changed. This overload takes a set of required parameters for the API.

Cause the specified Opportunity to have its status changed.

Overload List

| Overload | Description |
| --- | --- |
| [ChangeOpportunityStatus(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ChangeOpportunityStatus(String).md) | Cause the specified Opportunity to have its status changed. This overload takes a set of required parameters for the API.   |
| [ChangeOpportunityStatus(ChangeOpportunityStatusSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ChangeOpportunityStatus(ChangeOpportunityStatusSetup).md) | Cause the specified Opportunity to have its status changed. This overload takes a setup object.   |
| [ChangeOpportunityStatus(ChangeOpportunityStatusSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ChangeOpportunityStatus(ChangeOpportunityStatusSetup,IDbTransaction).md) | Cause the specified Opportunity to have its status changed. This overload takes a setup object and a database transaction.   |

Remarks

The object may be in any valid condition, but the status selected MUST be valid for the current condition. The API can also generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[ChangeOpportunityStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeOpportunityStatusSetup.md)