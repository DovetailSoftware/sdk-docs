### RejectOpportunity(RejectOpportunitySetup) Method

Setup object for API invocation.

Reject the Opportunity from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function RejectOpportunity( _
   ByVal _setupParam_ RejectOpportunitySetup _
) As ToolkitResult
```

```csharp
public ToolkitResult RejectOpportunity( 
   RejectOpportunitySetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Opportunity must be in open condition, and currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~RejectOpportunity.md)  
[RejectOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.RejectOpportunitySetup.md)