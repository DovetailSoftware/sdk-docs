### NewWipBin Property (MovePartRequestSetup)

The new WipBin into which the PartRequest is to be moved.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property NewWipBin As String
```

```csharp
[PropertyBitValueAttribute()]
public string NewWipBin {get; set;}
```

#### Remarks

The specified WipBin name must be valid for the current owner.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[MovePartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.MovePartRequestSetup.md)  
[MovePartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.MovePartRequestSetup_members.md)