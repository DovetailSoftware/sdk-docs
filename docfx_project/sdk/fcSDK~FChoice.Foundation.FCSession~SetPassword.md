     SetPassword Method (FCSession)                                                   

fcSDK Documentation

SetPassword Method (FCSession)

Username whose password is being changed

new password

The login type of the user. This value is CRM specific.

Change a user's password

Syntax

```vbnet
```csharp

'Declaration
 

Public Sub SetPassword( _
   ByVal _inUsername_ As String, _
   ByVal _newPass_ As String, _
   ByVal _LoginType_ As [Integer](#) _
) 

public void SetPassword( 
   string _inUsername_,
   string _newPass_,
   [int](#) _LoginType_
)

#### Parameters

_inUsername_

Username whose password is being changed

_newPass_

new password

_LoginType_

The login type of the user. This value is CRM specific.

Remarks

[ChangePassword](fcSDK~FChoice.Foundation.FCSession~ChangePassword.md) allows changing the password of the session user.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)