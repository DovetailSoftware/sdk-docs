### OnlyOpen Property (UpdateCaseSetup)

The OnlyOpen property, which defaults to true, is checked before updating the case.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property OnlyOpen As Boolean
```

```csharp
[PropertyBitValueAttribute()]
public bool OnlyOpen {get; set;}
```

#### Remarks

If the property is set to true, only Open cases will be updated.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup.md)  
[UpdateCaseSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup_members.md)