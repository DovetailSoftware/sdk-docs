### Territory Property (UpdateOpportunitySetup)

Name of the territory for the Opportunity.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property Territory As String
```

```csharp
[PropertyBitValueAttribute()]
public string Territory {get; set;}
```

#### Remarks

Must be a valid territory from the database. If not specified, the default territory is used.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.UpdateOpportunitySetup.md)  
[UpdateOpportunitySetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.UpdateOpportunitySetup_members.md)