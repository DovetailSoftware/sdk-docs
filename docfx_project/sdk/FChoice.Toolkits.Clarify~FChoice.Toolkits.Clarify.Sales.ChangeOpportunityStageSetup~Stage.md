### Stage Property

The new sales stage for the Opportunity.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property Stage As OpportunityStage
```

```csharp
[PropertyBitValueAttribute()]
public OpportunityStage Stage {get; set;}
```

#### Remarks

Must be a valid cycle stage from the database.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ChangeOpportunityStageSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeOpportunityStageSetup.md)  
[ChangeOpportunityStageSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeOpportunityStageSetup_members.md)