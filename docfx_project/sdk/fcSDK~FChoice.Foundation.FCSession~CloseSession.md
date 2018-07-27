### CloseSession Method (FCSession)

Remove the session from [FCApplication](fcSDK~FChoice.Foundation.FCApplication.md) and any Licenses it may be holding.

#### Overload List

| Overload | Description |
| --- | --- |
| [CloseSession](fcSDK~FChoice.Foundation.FCSession~CloseSession().md) |   |

#### Remarks

[FCApplication.CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md) creates a session and keeps a reference to it so that it may be later retrieved via [SessionID](fcSDK~FChoice.Foundation.FCSession~SessionID.md). **FCApplication** keeps a reference to help reduce the overhead of authentication and retrieval of possibly extensive session data. Thus it is important for long running applications to call this method when they are finished with the session object.

Any  Licenses that have been obtained by the session are released when the session is closed.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)