### GetSession Method (ClarifyApplication)

The globally unique identifier for the desired session.

Retrieves an [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) previously created by [CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md).

Syntax

```vbnet
' Declaration
Public Overridable Function GetSession( _
   ByVal _sessionID_ As Guid _
) As [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md)

public virtual [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) GetSession( 
   Guid _sessionID_
)

#### Parameters

_sessionID_

The globally unique identifier for the desired session.

#### Return Value

The [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) with the specified **_sessionID_**.

Exceptions

| Exception | Description |
| --- | --- |
| [ClarifyException](fcSDK~FChoice.Foundation.Clarify.ClarifyException.md) | A session with the specified ID does not exist or has been closed. |

Remarks

The ID of a session is accessible via the [SessionID](fcSDK~FChoice.Foundation.FCSession~SessionID.md) property.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)