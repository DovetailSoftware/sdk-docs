### Notes Property (UpdatePartRequestHeaderSetup)

Notes about the Part Request Header update

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property Notes As String
```

```csharp
[PropertyBitValueAttribute()]
public string Notes {get; set;}
```

#### Remarks

If this property is not set, the existing value will remain. If set to a value other than an empty string, this value will be updated in the database. Otherwise, if this property is set to an empty string the notes will be cleared in the database.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdatePartRequestHeaderSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartRequestHeaderSetup.md)  
[UpdatePartRequestHeaderSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartRequestHeaderSetup_members.md)