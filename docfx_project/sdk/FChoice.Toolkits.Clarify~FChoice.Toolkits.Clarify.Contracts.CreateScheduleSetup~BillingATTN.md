### BillingATTN Property (CreateScheduleSetup)

The name of the Attention person at billing site.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property BillingATTN As String
```

```csharp
[PropertyBitValueAttribute()]
public string BillingATTN {get; set;}
```

#### Remarks

If this field is set to “CLEAR”, the BillingATTN field is set to the empty string.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateScheduleSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateScheduleSetup.md)  
[CreateScheduleSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateScheduleSetup_members.md)