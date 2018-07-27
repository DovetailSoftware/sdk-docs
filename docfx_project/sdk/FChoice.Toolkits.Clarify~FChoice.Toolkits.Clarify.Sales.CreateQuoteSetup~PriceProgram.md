### PriceProgram Property (CreateQuoteSetup)

Name of the price program for the Quote.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property PriceProgram As String
```

```csharp
[PropertyBitValueAttribute()]
public string PriceProgram {get; set;}
```

#### Remarks

Must be a price program from the database. If not specified, "US Std Price List" is used.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteSetup.md)  
[CreateQuoteSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteSetup_members.md)