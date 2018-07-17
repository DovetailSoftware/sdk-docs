     UserName Property (UpdateExpenseLogSetup)                                                   

fcSDK Documentation

UserName Property (UpdateExpenseLogSetup)

The user who is updating the Expense Log. If not set, the session user is used.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property UserName As String

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public string UserName {get; set;}

Remarks

When this property is not specified. This API method will attempt to use the toolkit session's **UserName**. If the toolkit session was **created** as a **Contact** session this property is required otherwise errors will result.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdateExpenseLogSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateExpenseLogSetup.md)  
[UpdateExpenseLogSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateExpenseLogSetup_members.md)