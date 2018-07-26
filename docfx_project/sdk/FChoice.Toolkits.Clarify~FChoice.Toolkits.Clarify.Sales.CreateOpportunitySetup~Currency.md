### Currency Property (CreateOpportunitySetup)

Name of the currency for the Opportunity.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property Currency As String
```

```csharp
[PropertyBitValueAttribute()]
public string Currency {get; set;}
```

#### Remarks

Must be a valid currency from the database. If not specified, the default currency is used.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateOpportunitySetup.md)  
[CreateOpportunitySetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateOpportunitySetup_members.md)