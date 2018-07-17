     CreateSession(String,ClarifyLoginType) Method                                                   

fcSDK Documentation

CreateSession(String,ClarifyLoginType) Method

The user or login name of the user

The type of login to perform using the specified **_userName_**.

Creates a new [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) and performs a passwordless login for the specified user and [ClarifyLoginType](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md).

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Overridable Function CreateSession( _
   ByVal _userName_ As String, _
   ByVal _loginType_ As [ClarifyLoginType](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md) _
) As [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md)

public virtual [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) CreateSession( 
   string _userName_,
   [ClarifyLoginType](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md) _loginType_
)

#### Parameters

_userName_

The user or login name of the user

_loginType_

The type of login to perform using the specified **_userName_**.

#### Return Value

A [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) logged in using the specified **_userName_**.

Remarks

This method will log in the session using the given username and no password.

**WARNING**: This method has potential security implications. If enabled, this functionality could allow users to log in as any user without knowledge of the password and perform any action on behalf of that user. This creates an audit trail problem because you cannot accurately trace which user performed which action.

**IMPORTANT**: First Choice has disabled this functionality by default. If you decide that you are willing to assume the risk of enabling this functionality, you must add an appSettings entry into your application configuration file with the key "_fchoice.sessionPasswordRequired_" with the value of "false".

The general use case for this method is if you're using your Clarify system to support another application that already provides authentication and authorization services. It is assumed that you have properly validated that the current user is authorized to log in and does not need to go through the Clarify authentication process and incur a performance delay.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md)