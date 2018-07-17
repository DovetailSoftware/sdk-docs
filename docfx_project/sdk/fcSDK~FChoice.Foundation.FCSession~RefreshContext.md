     RefreshContext Method (FCSession)                                                   

fcSDK Documentation

RefreshContext Method (FCSession)

Refresh the session information for the logged-in user.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overridable Sub RefreshContext() 

public virtual void RefreshContext()

Remarks

FCFL.NET sessions are stateful containers that are used to remember information about a user during their session using the system. If session information changes in the database you will need to **RefreshContext **to access those changes from the session.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)