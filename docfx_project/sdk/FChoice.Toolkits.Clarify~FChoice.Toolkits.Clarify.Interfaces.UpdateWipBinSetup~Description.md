### Description Property (UpdateWipBinSetup)

WipBin description

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property Description As String
```

```csharp
[PropertyBitValueAttribute()]
public string Description {get; set;}
```

#### Remarks

If this property has not been set no change will occur. If the property is set, even to an empty string, that value reflected in the update.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateWipBinSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateWipBinSetup.md)  
[UpdateWipBinSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateWipBinSetup_members.md)