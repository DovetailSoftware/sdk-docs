     CurrentSessions Method (FCApplication)                                                   

fcSDK Documentation

CurrentSessions Method (FCApplication)

Provides a view into the FCApplication's currently running sessions.

Syntax

```vbnet
```csharp

'Declaration
 

Public Function CurrentSessions() As [FCSessionSummary()](fcSDK~FChoice.Foundation.FCSessionSummary.md)

public [FCSessionSummary\[\]](fcSDK~FChoice.Foundation.FCSessionSummary.md) CurrentSessions()

#### Return Value

An Array of [FCSessionSummary](fcSDK~FChoice.Foundation.FCSessionSummary.md) objects representing the current running sessions.

Remarks

This method is present for administrative purposes. It could be used to find out how many users are logged into the system or to Retrieve and call [CloseSession](fcSDK~FChoice.Foundation.FCSession~CloseSession.md) on unused session objects.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCApplication Class](fcSDK~FChoice.Foundation.FCApplication.md)  
[FCApplication Members](fcSDK~FChoice.Foundation.FCApplication_members.md)