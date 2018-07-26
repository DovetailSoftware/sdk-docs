### FromLocation Property (PartTransferSetup)

Inventory location (or expense GL) and bin from which to transfer the part

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property FromLocation As Location
```

```csharp
[PropertyBitValueAttribute()]
public Location FromLocation {get; set;}
```

#### Remarks

To use a primary bin suggestion/recommendation that has been previously configured, use the [special constructor](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location~_ctor(String,Boolean).md) for the Location object and set the _isPrimaryBinSuggestion_ parameter to true.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[PartTransferSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup.md)  
[PartTransferSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup_members.md)