### BillingATTN Property (UpdateScheduleSetup)

Specifies the to who's attention the billing is direct.

#### Syntax

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

If this property has not been set no change will occur. If the property is set, even to an empty string, that value reflected in the update.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateScheduleSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UpdateScheduleSetup.md)  
[UpdateScheduleSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UpdateScheduleSetup_members.md)