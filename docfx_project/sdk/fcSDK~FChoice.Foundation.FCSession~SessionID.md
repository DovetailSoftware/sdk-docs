### SessionID Property (FCSession)

Returns the session's unique identifier.

Syntax

```vbnet
'Declaration

Public ReadOnly Property SessionID As Guid
```

```csharp
public Guid SessionID {get;}
```

#### Property Value

Returns the session's unique identifier.

Remarks

This identifier is used to re-use a session that has already been created via [GetSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~GetSession.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)