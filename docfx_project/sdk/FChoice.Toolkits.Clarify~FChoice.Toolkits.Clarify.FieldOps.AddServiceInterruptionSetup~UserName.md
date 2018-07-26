### UserName Property (AddServiceInterruptionSetup)

The user who is adding the Service Interuption. If not set, the session user is used.

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

[AddServiceInterruptionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionSetup.md)  
[AddServiceInterruptionSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionSetup_members.md)