### RefreshContext Method (FCSession)

Refresh the session information for the logged-in user.

#### Syntax

```vbnet
'Declaration

Public Overridable Sub RefreshContext() 
```

```csharp
public virtual void RefreshContext()
```

#### Remarks

FCFL.NET sessions are stateful containers that are used to remember information about a user during their session using the system. If session information changes in the database you will need to **RefreshContext **to access those changes from the session.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)