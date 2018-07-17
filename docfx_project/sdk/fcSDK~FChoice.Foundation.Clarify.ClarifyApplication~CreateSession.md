     CreateSession Method (ClarifyApplication)                                                   

fcSDK Documentation

CreateSession Method (ClarifyApplication)

Creates a new [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) and logs in using the username and password for the application.

Creates a new [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) object through which most access to the Clarify System occurs.

Overload List

| Overload | Description |
| --- | --- |
| [CreateSession()](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession().md) | Creates a new [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) and logs in using the username and password for the application.   |
| [CreateSession(String,ClarifyLoginType)](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession(String,ClarifyLoginType).md) | Creates a new [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) and performs a passwordless login for the specified user and [ClarifyLoginType](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md).   |
| [CreateSession(String,String,ClarifyLoginType)](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession(String,String,ClarifyLoginType).md) | Creates a new [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) and performs a login using the specified username, password, and [ClarifyLoginType](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md).   |

Remarks

There is no way to create a ClarifySession that is not already logged in.

Specific inheritable properties, such as [TruncateStringFields](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~TruncateStringFields.md), are copied to the new sessions created via this method.

**IMPORTANT:**  By default, using the overload without any parameters, or the overload that takes only a username will throw an exception. This is to help prevent potential security problems that might arise from passwordless or full-access session logins. If you wish to override the security check enable this functionality despite the security implications, please contact First Choice support at [support@fchoice.com](mailto:support@fchoice.com) and request information on how to enable it.

 .

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)