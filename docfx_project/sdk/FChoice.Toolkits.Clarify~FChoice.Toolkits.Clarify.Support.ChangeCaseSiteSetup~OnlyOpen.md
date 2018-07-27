### OnlyOpen Property (ChangeCaseSiteSetup)

The OnlyOpen property, which defaults to true, is checked before updating the case site.

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

If the property is set to true, only Open cases will have their site changed.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ChangeCaseSiteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeCaseSiteSetup.md)  
[ChangeCaseSiteSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeCaseSiteSetup_members.md)