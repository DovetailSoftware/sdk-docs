### FromLocation Property (ReceivePartRequestSetup)

Inventory location (or expense GL) from which to receive.

#### Syntax

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

If this parameter is set to [Location.EMPTY](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location~EMPTY.md), the inventory will be searched for the received part. If found, that location will be used.

To use a primary bin suggestion/recommendation that has been previously configured, use the [special constructor](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location~_ctor(String,Boolean).md) for the Location object and set the _isPrimaryBinSuggestion_ parameter to true.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ReceivePartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup.md)  
[ReceivePartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup_members.md)