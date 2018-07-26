### Currency Property (CreateQuoteSetup)

Name of the currency for the Quote.

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

[CreateQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteSetup.md)  
[CreateQuoteSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteSetup_members.md)