### ParentSiteIDNum Property (UpdateSiteSetup)

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

[UpdateSiteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateSiteSetup.md)  
[UpdateSiteSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateSiteSetup_members.md)