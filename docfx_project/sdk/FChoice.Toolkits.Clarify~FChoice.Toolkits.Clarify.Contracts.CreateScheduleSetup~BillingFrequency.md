     BillingFrequency Property (CreateScheduleSetup)                                                   

fcSDK Documentation

BillingFrequency Property (CreateScheduleSetup)

How often will this Schedule induce billing?

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property BillingFrequency As [BillingFrequency](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.BillingFrequency.md)

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public [BillingFrequency](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.BillingFrequency.md) BillingFrequency {get; set;}

Remarks

These are the acceptable billing frequencies:

*   ANNUAL
*   SEMI_ANNUAL
*   QUARTERLY
*   MONTHLY
*   ONE_TIME

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateScheduleSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateScheduleSetup.md)  
[CreateScheduleSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateScheduleSetup_members.md)