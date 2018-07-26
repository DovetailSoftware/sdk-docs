### ExpectedDate Property

The DateTime the Part Request backordered parts are expected to arrive. If not set, the current time is used.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property ExpectedDate As Date
```

```csharp
[PropertyBitValueAttribute()]
public DateTime ExpectedDate {get; set;}
```

[!include[Requirements](../partials/requirements.md)]

#### Reference

[BackorderPartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup.md)  
[BackorderPartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup_members.md)