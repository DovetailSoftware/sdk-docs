### PriceType Property (CreatePriceInstanceSetup)

The price type for the Price Instance.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property PriceType As PriceInstanceType
```

```csharp
[PropertyBitValueAttribute()]
public PriceInstanceType PriceType {get; set;}
```

#### Remarks

The following values are used:

*   0=fixed
*   1=percent of product
*   2=percent of option list (not supported at this time)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreatePriceInstanceSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup.md)  
[CreatePriceInstanceSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup_members.md)