### MoveOpportunity Method

Move the Opportunity from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

Move the Opportunity from one WipBin to another WipBin.

Overload List

| Overload | Description |
| --- | --- |
| [MoveOpportunity(String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~MoveOpportunity(String,String).md) | Move the Opportunity from one WipBin to another WipBin. This overload takes a set of required parameters for the API.   |
| [MoveOpportunity(MoveOpportunitySetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~MoveOpportunity(MoveOpportunitySetup).md) | Move the Opportunity from one WipBin to another WipBin. This overload takes a setup object.   |
| [MoveOpportunity(MoveOpportunitySetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~MoveOpportunity(MoveOpportunitySetup,IDbTransaction).md) | Move the Opportunity from one WipBin to another WipBin. This overload takes a setup object and a database transaction.   |

Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the Opportunity, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[MoveOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.MoveOpportunitySetup.md)