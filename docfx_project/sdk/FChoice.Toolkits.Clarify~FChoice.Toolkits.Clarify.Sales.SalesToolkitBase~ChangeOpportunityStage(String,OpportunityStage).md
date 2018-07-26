### ChangeOpportunityStage(String,OpportunityStage) Method

Opportunity Identifier.

The new sales stage for the Opportunity.

Syntax

```vbnet
'Declaration

Public Overloads Function ChangeOpportunityStage( _
   ByVal _opportunityIDNum_ As String, _
   ByVal _stage_ As OpportunityStage _
) As ToolkitResult
```

```csharp
public ToolkitResult ChangeOpportunityStage( 
   string _opportunityIDNum_,
   OpportunityStage _stage_
)
```

#### Parameters

_opportunityIDNum_

Opportunity Identifier.

_stage_

The new sales stage for the Opportunity.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkitBase Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkitBase.md)  
[SalesToolkitBase Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkitBase_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkitBase~ChangeOpportunityStage.md)