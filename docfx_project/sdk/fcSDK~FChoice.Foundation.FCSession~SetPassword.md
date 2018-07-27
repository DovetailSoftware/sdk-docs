### SetPassword Method (FCSession)

Username whose password is being changed

new password

The login type of the user. This value is CRM specific.

Change a user's password

#### Syntax

```vbnet
'Declaration

Public Sub SetPassword( _
   ByVal _inUsername_ As String, _
   ByVal _newPass_ As String, _
   ByVal _LoginType_ As Integer _
) 
```

```csharp
public void SetPassword( 
   string _inUsername_,
   string _newPass_,
   int _LoginType_
)
```

#### Parameters

_inUsername_

Username whose password is being changed

_newPass_

new password

_LoginType_

The login type of the user. This value is CRM specific.

#### Remarks

[ChangePassword](fcSDK~FChoice.Foundation.FCSession~ChangePassword.md) allows changing the password of the session user.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)