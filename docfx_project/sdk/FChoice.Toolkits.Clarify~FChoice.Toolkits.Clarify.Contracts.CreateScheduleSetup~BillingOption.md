### BillingOption Property (CreateScheduleSetup)

For any Billing Frequency except "One Time," select whether the customer is billed in advance or after the fact.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property BillingOption As BillingOption
```

```csharp
[PropertyBitValueAttribute()]
public BillingOption BillingOption {get; set;}
```

#### Remarks

These are the acceptable billing options:

*   IN_ADVANCE
*   IN_ARREARS

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateScheduleSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateScheduleSetup.md)  
[CreateScheduleSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateScheduleSetup_members.md)