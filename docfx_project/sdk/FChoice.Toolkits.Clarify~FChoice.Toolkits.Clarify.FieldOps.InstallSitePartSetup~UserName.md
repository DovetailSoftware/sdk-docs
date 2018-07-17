     UserName Property (InstallSitePartSetup)                                                   

fcSDK Documentation

UserName Property (InstallSitePartSetup)

The user who installed the Site Part. If not set, the Toolkit session user is used.

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

[InstallSitePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.InstallSitePartSetup.md)  
[InstallSitePartSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.InstallSitePartSetup_members.md)