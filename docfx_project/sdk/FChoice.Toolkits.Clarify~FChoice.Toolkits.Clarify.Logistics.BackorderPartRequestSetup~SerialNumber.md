### SerialNumber Property (BackorderPartRequestSetup)

The serial number of the part used to backorder this Part Request

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property SerialNumber As String
```

```csharp
[PropertyBitValueAttribute()]
public string SerialNumber {get; set;}
```

#### Remarks

If no serial number is specified and serialized parts are being used, the serial number from the Part Request will be used.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[BackorderPartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup.md)  
[BackorderPartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup_members.md)