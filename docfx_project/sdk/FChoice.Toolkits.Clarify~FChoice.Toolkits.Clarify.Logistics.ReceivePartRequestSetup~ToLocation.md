﻿### ToLocation Property (ReceivePartRequestSetup)

Inventory location (or expense GL) into which the stock will be received

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property ToLocation As Location
```

```csharp
[PropertyBitValueAttribute()]
public Location ToLocation {get; set;}
```

#### Remarks

To use a primary bin suggestion/recommendation that has been previously configured, use the [special constructor](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location~_ctor(String,Boolean).md) for the Location object and set the _isPrimaryBinSuggestion_ parameter to true.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ReceivePartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup.md)  
[ReceivePartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup_members.md)