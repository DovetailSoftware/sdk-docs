### CreateSession(String,String,ClarifyLoginType) Method

The user or login name of the user

The password for the user

The type of login to perform using the specified **_userName_**

Creates a new [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) and performs a login using the specified username, password, and [ClarifyLoginType](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md).

Syntax

```vbnet
' Declaration

Public Overloads Overridable Function CreateSession( _
   ByVal _userName_ As String, _
   ByVal _password_ As String, _
   ByVal _loginType_ As [ClarifyLoginType](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md) _
) As [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md)

public virtual [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) CreateSession( 
   string _userName_,
   string _password_,
   [ClarifyLoginType](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md) _loginType_
)

#### Parameters

_userName_

The user or login name of the user

_password_

The password for the user

_loginType_

The type of login to perform using the specified **_userName_**

#### Return Value

A [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) logged in using the specified **_userName_** and **_password_**

Remarks

This method will log in the session using the given username, password, and login type before returning.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md)