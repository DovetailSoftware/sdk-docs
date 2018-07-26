### ConfigItems Property (FCSession)

Collection of CRM session configuration items.

Syntax

```vbnet
'Declaration

Public ReadOnly Property ConfigItems As ConfigItemCollection
```

```csharp
public ConfigItemCollection ConfigItems {get;}
```

#### Property Value

A [ClarifyConfigItemCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.ClarifyConfigItemCollection.md) which contains instances of [ClarifyConfigItem](fcSDK~FChoice.Foundation.Clarify.DataObjects.ClarifyConfigItem.md) which represent each config item for the specified user in the Clarify database.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)