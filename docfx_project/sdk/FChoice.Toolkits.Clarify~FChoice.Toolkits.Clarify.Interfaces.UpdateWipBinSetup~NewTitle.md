### NewTitle Property (UpdateWipBinSetup)

New title for the WipBin

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property NewTitle As String
```

```csharp
[PropertyBitValueAttribute()]
public string NewTitle {get; set;}
```

#### Remarks

Because the WipBin is retrieved by [UserName](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateWipBinSetup~UserName.md) and [Title](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateWipBinSetup~Title.md) you must use this property to change the WipBin's title.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateWipBinSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateWipBinSetup.md)  
[UpdateWipBinSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateWipBinSetup_members.md)