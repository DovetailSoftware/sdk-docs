### BillingFrequency Property (CreateScheduleSetup)

How often will this Schedule induce billing?

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property BillingFrequency As BillingFrequency
```

```csharp
[PropertyBitValueAttribute()]
public BillingFrequency BillingFrequency {get; set;}
```

#### Remarks

These are the acceptable billing frequencies:

*   ANNUAL
*   SEMI_ANNUAL
*   QUARTERLY
*   MONTHLY
*   ONE_TIME

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateScheduleSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateScheduleSetup.md)  
[CreateScheduleSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateScheduleSetup_members.md)