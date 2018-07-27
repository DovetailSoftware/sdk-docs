### BillSiteIDNum Property (UpdateScheduleSetup)

Site Identifier for the billing of this Schedule.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property BillSiteIDNum As String
```

```csharp
[PropertyBitValueAttribute()]
public string BillSiteIDNum {get; set;}
```

#### Remarks

If this is set to the empty string (“”) or “IGNORE”, no change is made in the site.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateScheduleSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UpdateScheduleSetup.md)  
[UpdateScheduleSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UpdateScheduleSetup_members.md)