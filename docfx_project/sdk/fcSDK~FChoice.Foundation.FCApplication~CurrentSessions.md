### CurrentSessions Method (FCApplication)

Provides a view into the FCApplication's currently running sessions.

Syntax

```vbnet
'Declaration

Public Function CurrentSessions() As FCSessionSummary()
```

```csharp
public FCSessionSummary[] CurrentSessions()
```

#### Return Value

An Array of [FCSessionSummary](fcSDK~FChoice.Foundation.FCSessionSummary.md) objects representing the current running sessions.

Remarks

This method is present for administrative purposes. It could be used to find out how many users are logged into the system or to Retrieve and call [CloseSession](fcSDK~FChoice.Foundation.FCSession~CloseSession.md) on unused session objects.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCApplication Class](fcSDK~FChoice.Foundation.FCApplication.md)  
[FCApplication Members](fcSDK~FChoice.Foundation.FCApplication_members.md)