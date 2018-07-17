     UserName Property (ChangeQuoteStatusSetup)                                                   

fcSDK Documentation

UserName Property (ChangeQuoteStatusSetup)

The username of the user who is changing the Quote status. If not set, the Toolkit session user is used.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property UserName As String

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public string UserName {get; set;}

Remarks

When this property is not specified. This API method will attempt to use the toolkit session's [UserName](fcSDK~FChoice.Foundation.FCSession~UserName.md). If the toolkit session was [created](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession(String,String,ClarifyLoginType).md) as a [Contact](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md) session this property is required otherwise errors will result.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ChangeQuoteStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ChangeQuoteStatusSetup.md)  
[ChangeQuoteStatusSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ChangeQuoteStatusSetup_members.md)