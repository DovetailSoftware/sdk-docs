### Status Property (CreatePartRevisionSetup)

The status of the Part Revision.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property Status As PartRevisionStatus
```

```csharp
[PropertyBitValueAttribute()]
public PartRevisionStatus Status {get; set;}
```

#### Remarks

If not set, the default value of [PartRevisionStatus.Active](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PartRevisionStatus.md)  is used.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreatePartRevisionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePartRevisionSetup.md)  
[CreatePartRevisionSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePartRevisionSetup_members.md)