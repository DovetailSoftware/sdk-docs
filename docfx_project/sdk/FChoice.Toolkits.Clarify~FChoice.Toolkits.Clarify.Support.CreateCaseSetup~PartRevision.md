### PartRevision Property (CreateCaseSetup)

Revision of the Case part or SitePart.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property PartRevision As String
```

```csharp
[PropertyBitValueAttribute()]
public string PartRevision {get; set;}
```

#### Remarks

If the revision is NULL (Oracle only), still use the empty string ("") to query.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CreateCaseSetup.md)  
[CreateCaseSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CreateCaseSetup_members.md)