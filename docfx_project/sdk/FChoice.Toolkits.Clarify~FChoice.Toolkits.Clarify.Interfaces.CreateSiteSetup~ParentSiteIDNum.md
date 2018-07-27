### ParentSiteIDNum Property (CreateSiteSetup)

Identifier for the parent Site of the Site being created.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property ParentSiteIDNum As String
```

```csharp
[PropertyBitValueAttribute()]
public string ParentSiteIDNum {get; set;}
```

#### Remarks

If this property is set to an empty string the relation to the parent Site will be removed.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateSiteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSiteSetup.md)  
[CreateSiteSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSiteSetup_members.md)