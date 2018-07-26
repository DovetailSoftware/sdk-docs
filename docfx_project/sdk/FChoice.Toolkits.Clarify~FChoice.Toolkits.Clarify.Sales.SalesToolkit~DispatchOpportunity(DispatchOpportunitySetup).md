### DispatchOpportunity(DispatchOpportunitySetup) Method

Setup object for API invocation.

Dispatch the Opportunity to the specified queue. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function DispatchOpportunity( _
   ByVal _setupParam_ DispatchOpportunitySetup _
) As ToolkitResult
```

```csharp
public ToolkitResult DispatchOpportunity( 
   DispatchOpportunitySetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Opportunity must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~DispatchOpportunity.md)  
[DispatchOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.DispatchOpportunitySetup.md)