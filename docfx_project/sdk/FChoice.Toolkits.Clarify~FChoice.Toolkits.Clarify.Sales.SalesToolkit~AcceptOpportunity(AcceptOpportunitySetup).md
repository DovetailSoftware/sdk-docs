### AcceptOpportunity(AcceptOpportunitySetup) Method

Setup object for API invocation.

Accept the specified Opportunity from the queue in which it is currently dispatched. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function AcceptOpportunity( _
   ByVal _setupParam_ AcceptOpportunitySetup _
) As ToolkitResult
```

```csharp
public ToolkitResult AcceptOpportunity( 
   AcceptOpportunitySetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Opportunity must be currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AcceptOpportunity.md)  
[AcceptOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.AcceptOpportunitySetup.md)