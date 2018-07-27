### OnlyOpen Property (ChangeCaseContactSetup)

The OnlyOpen property, which defaults to true, is checked before updating the case contact.

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

If the property is set to true, only Open cases will have their contact changed.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ChangeCaseContactSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeCaseContactSetup.md)  
[ChangeCaseContactSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeCaseContactSetup_members.md)