### CreateSession() Method

Creates a new [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) and logs in using the username and password for the application.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateSession() As ClarifySession
```

```csharp
public ClarifySessionCreateSession()
```

#### Return Value

A new ClarifySession instance that is logged in using the application username and password.

Remarks

This method will log in the session using the username and password specified in the application connection string configuration variable.

**WARNING**: This method has potential security implications. If enabled, this method would allow users to log in as a high-privileged user without knowledge of the username or password (assuming your application user is high-privileged). Once these privileges are obtained, the user could perform damaging (either accidental or malicious) actions which might disable your Clarify installation.

**IMPORTANT**: First Choice has disabled this functionality by default. If you decide that you are willing to assume the risk of enabling this functionality, you must add an appSettings entry into your application configuration file with the key "_fchoice.disableLoginFromFCApp_" with the value of "false".

The general use case for this method is if you are writing a simple application that performs some type of repetitive, batch, or behind-the-scenes process and requires no user input. Rather than hard-coding a username and password into your application, you can simply use the application user.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md)