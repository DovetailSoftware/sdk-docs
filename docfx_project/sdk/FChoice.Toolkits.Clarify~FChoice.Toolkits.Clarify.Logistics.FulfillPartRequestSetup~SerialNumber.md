### SerialNumber Property (FulfillPartRequestSetup)

The serial number of the part used to fulfill this Part Request

Syntax

```vbnet
' Declaration
<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property SerialNumber As String

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public string SerialNumber {get; set;}

Remarks

If no serial number is specified and serialized parts are being used, the serial number from the Part Request will be used.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FulfillPartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup.md)  
[FulfillPartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup_members.md)