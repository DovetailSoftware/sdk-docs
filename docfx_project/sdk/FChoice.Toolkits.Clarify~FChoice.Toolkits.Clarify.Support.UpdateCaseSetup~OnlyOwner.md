### OnlyOwner Property (UpdateCaseSetup)

Specifies if only the owner should be allow to modify the Case.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property OnlyOwner As Boolean
```

```csharp
[PropertyBitValueAttribute()]
public bool OnlyOwner {get; set;}
```

#### Remarks

If the [User](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup~UserName.md) is not the current owner of the Case and this flag is **true** then the Update will not happen.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup.md)  
[UpdateCaseSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup_members.md)