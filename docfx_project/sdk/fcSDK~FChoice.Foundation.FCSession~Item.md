### Item Property (FCSession)

Session data indexer

Get or set session data indexed by specified key.

Syntax

```vbnet
'Declaration

Public Default Property Item( _
   ByVal _key_ As String _
) As Object
```

```csharp
public object this\[ 
   string _key_
\]; {get; set;}
```

#### Parameters

_key_

Session data indexer

Remarks

Details about the logged-in user are populated into this collection during [CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md).

**Note:** Application developers can use this repository to store session specific data which will last across session lifetimes until [CloseSession](fcSDK~FChoice.Foundation.FCSession~CloseSession.md) is called. You can retrieve a session using [FCApplication.GetSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~GetSession.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)