### PriceProgram Property (CreatePriceInstanceSetup)

The title of the Price Program for this Price Instance. If blank then "US Std Price List" will be used.

Syntax

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

Must be supplied and must be a valid Price Program.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreatePriceInstanceSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup.md)  
[CreatePriceInstanceSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup_members.md)