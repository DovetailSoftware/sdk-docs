### PriceType Property (CreatePriceInstanceSetup)

The price type for the Price Instance.

Syntax

```vbnet
' Declaration

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property PriceType As [PriceInstanceType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PriceInstanceType.md)

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public [PriceInstanceType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PriceInstanceType.md) PriceType {get; set;}

Remarks

The following values are used:

*   0=fixed
*   1=percent of product
*   2=percent of option list (not supported at this time)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[CreatePriceInstanceSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup.md)  
[CreatePriceInstanceSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup_members.md)