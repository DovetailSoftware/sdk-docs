### ChangeOpportunityStatus(ChangeOpportunityStatusSetup) Method

Setup object for API invocation.

Cause the specified Opportunity to have its status changed. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ChangeOpportunityStatus( _
   ByVal _setupParam_ ChangeOpportunityStatusSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ChangeOpportunityStatus( 
   ChangeOpportunityStatusSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The object may be in any valid condition, but the status selected MUST be valid for the current condition. The API can also generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ChangeOpportunityStatus.md)  
[ChangeOpportunityStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeOpportunityStatusSetup.md)