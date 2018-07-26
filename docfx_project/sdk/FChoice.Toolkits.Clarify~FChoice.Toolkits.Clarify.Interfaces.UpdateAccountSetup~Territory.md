### Territory Property (UpdateAccountSetup)

Territory of the Account.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property Territory As String
```

```csharp
[PropertyBitValueAttribute()]
public string Territory {get; set;}
```

#### Remarks

Must be a valid Territory name from table 'territory'.

If the property is set to an empty string the relation to the current Territory will be removed.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateAccountSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateAccountSetup.md)  
[UpdateAccountSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateAccountSetup_members.md)