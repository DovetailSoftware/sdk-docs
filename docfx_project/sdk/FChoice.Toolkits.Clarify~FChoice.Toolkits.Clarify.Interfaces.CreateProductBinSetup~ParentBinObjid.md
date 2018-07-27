### ParentBinObjid Property (CreateProductBinSetup)

Set this value if you wish the new Bin to be a child of this Parent Bin.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property ParentBinObjid As Integer
```

```csharp
[PropertyBitValueAttribute()]
public int ParentBinObjid {get; set;}
```

#### Remarks

The SiteIDNum of the parent bin must match the [SiteIDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup~SiteIDNum.md) of this bin.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateProductBinSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup.md)  
[CreateProductBinSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup_members.md)