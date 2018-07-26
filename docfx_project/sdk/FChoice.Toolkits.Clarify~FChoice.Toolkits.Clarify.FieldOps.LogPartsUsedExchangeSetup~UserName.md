### UserName Property (LogPartsUsedExchangeSetup)

The user who has logged the Part usage. If not set, the Toolkit session user is used.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property UserName As String
```

```csharp
[PropertyBitValueAttribute()]
public string UserName {get; set;}
```

#### Remarks

When this property is not specified. This API method will attempt to use the toolkit session's **UserName**. If the toolkit session was **created** as a **Contact** session this property is required otherwise errors will result.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogPartsUsedExchangeSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedExchangeSetup.md)  
[LogPartsUsedExchangeSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedExchangeSetup_members.md)