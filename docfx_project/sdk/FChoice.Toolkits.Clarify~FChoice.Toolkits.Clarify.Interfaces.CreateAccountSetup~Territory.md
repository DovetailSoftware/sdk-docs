     Territory Property (CreateAccountSetup)                                                   

fcSDK Documentation

Territory Property (CreateAccountSetup)

Territory of the Account.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property Territory As String

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public string Territory {get; set;}

Remarks

Must be a valid Territory name from table 'territory'.

If the property is set to an empty string the relation to the current Territory will be removed.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateAccountSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAccountSetup.md)  
[CreateAccountSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAccountSetup_members.md)