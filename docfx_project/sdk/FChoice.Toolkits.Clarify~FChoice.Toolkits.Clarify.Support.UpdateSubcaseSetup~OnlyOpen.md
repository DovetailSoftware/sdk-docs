### OnlyOpen Property (UpdateSubcaseSetup)

The OnlyOpen property, which defaults to true, is checked before updating the subcase.

Syntax

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

If the property is set to true, only Open subcases will be updated.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateSubcaseSetup.md)  
[UpdateSubcaseSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateSubcaseSetup_members.md)