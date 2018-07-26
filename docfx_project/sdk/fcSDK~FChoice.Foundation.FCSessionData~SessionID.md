### SessionID Property (FCSessionData)

A session's unique identifier.

Syntax

```vbnet
'Declaration

Public Property SessionID As Guid
```

```csharp
public Guid SessionID {get; set;}
```

#### Remarks

This identifier is used to re-use a session that has already been created via [GetSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~GetSession.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSessionData Class](fcSDK~FChoice.Foundation.FCSessionData.md)  
[FCSessionData Members](fcSDK~FChoice.Foundation.FCSessionData_members.md)